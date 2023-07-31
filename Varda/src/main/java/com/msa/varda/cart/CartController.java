package com.msa.varda.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class CartController {
	

	@Autowired 
	ICartService cartService;
	
	// 장바구니 목록 조회
	@RequestMapping(value="cart/cartList", method = RequestMethod.GET)
	public String getCartList(CartVO cartVO, Model model, HttpSession session) {
		// 세션에 저장된 아이디 확인
		String sessionId = (String)session.getAttribute("loginId");
		// 로그인 상태라면
		if(sessionId!=null) {
			// 로그인된 아이디(sessionID)의 리스트
			List list = cartService.getCartList(sessionId);
			for(Object obj:list) {
				System.out.println(obj);
			}
			model.addAttribute("list",list);
			return "cart/cartList";
			
		}else { return "redirect:/customer/loginForm";}
		
	}
	
	//장바구니 상품 추가
	@RequestMapping(value="cart/productInfo/{pdId}", method = RequestMethod.GET)
	public @ResponseBody String addCart(@PathVariable(value = "pdId") String pdId,  
						  CartVO cartVO, HttpSession session ) {
		System.out.println("컨트롤러까지는 이동");
		// 세션에 저장된 아이디 확인
		String sessionId = (String)session.getAttribute("loginId");
			// cartVO 에 받아온 pdId와 세션에 있던 cId(sessionId) set 해주기 
			cartVO.setPdId(pdId);
			cartVO.setcId(sessionId);
			cartService.addCart(cartVO);
			System.out.println("con3");
			return "ok";
	  }
	 
	// 장바구니 삭제
	@RequestMapping(value="cart/delete/{cartNum}", method = RequestMethod.GET)
	public @ResponseBody String deleteCart(@PathVariable(value = "cartNum") int cartNum, CartVO cartVO, HttpSession session) {
		String sessionId = (String)session.getAttribute("loginId");
		if(sessionId!=null) {
			cartService.deleteCart(sessionId, cartVO.getCartNum());
			return "cart/cartList";
		} else return "redirect:/customer/loginForm";
	}
	
	//Restfull 방식(객체를 돌려줌)
		@RequestMapping("/images/{id}")
		public ResponseEntity<byte[]> getBinaryFile(@PathVariable String id) {
			System.out.println(id);
			FileVO file = cartService.getFile(id);
			final HttpHeaders headers = new HttpHeaders();
			if(file != null) {
				return new ResponseEntity<byte[]>(file.getFileData(), headers, HttpStatus.OK);
			}else {
				return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
			}
		}
		
		//Restfull 방식
		@RequestMapping("/images/sub/{id}")
		public ResponseEntity<byte[]> getBinarySubFile(@PathVariable String id) {
			System.out.println(id);
					FileVO file = cartService.getSubFile(id);
					final HttpHeaders headers = new HttpHeaders();
					if(file != null) {
						return new ResponseEntity<byte[]>(file.getFileData(), headers, HttpStatus.OK);
					}else {
						return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
					}
				}
	
}
