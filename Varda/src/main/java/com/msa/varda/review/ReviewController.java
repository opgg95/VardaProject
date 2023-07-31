package com.msa.varda.review;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	@Autowired IReviewService reviewService;
	
	
	//리뷰 작성하기 (폼으로 이동
	/*
	 * @RequestMapping(value="review/review/{pdId}", method=RequestMethod.GET)
	 * public String writeReview(@PathVariable (value="pdId") String pdId,
	 * HttpSession session, Model model) { String sessionId =
	 * (String)session.getAttribute("loginId");
	 * model.addAttribute("sessionId",sessionId); model.addAttribute("pdId", pdId);
	 * return "review/reviewForm"; }
	 */
	
	 @RequestMapping(value="review/review/{pdId}", method=RequestMethod.GET)
	   public String writeReview(@PathVariable (value="pdId") String pdId, HttpSession session, Model model) {
	      String sessionId = (String)session.getAttribute("loginId");
	      model.addAttribute("sessionId",sessionId);
	      model.addAttribute("pdId", pdId);
	      System.out.println("성희언니여기");
	      return "/review/reviewForm";
	   }
	 
	//리뷰 작성하기
	/*
	 * @RequestMapping(value="review/reviewForm", method=RequestMethod.POST) public
	 * String writeReview(Model model, ReviewVO reviewVO) {
	 * reviewService.writeReview(reviewVO); model.addAttribute("reviewVO",
	 * reviewVO); return "redirect:order/orderList"; }
	 */
//   //리뷰 작성하기
   @RequestMapping(value="review/reviewTab", method=RequestMethod.POST)
   public String writeReview(Model model, ReviewVO reviewVO) {
      reviewService.writeReview(reviewVO);
      model.addAttribute("reviewVO", reviewVO);
      return "review/reviewTab";
      }

		/*
		 * //리뷰 조회하기
		 * 
		 * @RequestMapping(value="product/productInfo/{pdId}/review",
		 * method=RequestMethod.POST) public String getReviewList(@PathVariable
		 * (value="pdId") String pdId, Model model) { List<ReviewVO> reviewlist =
		 * reviewService.getReviewList(pdId);
		 * model.addAttribute("reviewlist",reviewlist); return
		 * "product/productInfo/{pdId}/review";
		 * 
		 * }
		 */


}
