package com.msa.varda.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {

	@Autowired
	IOrderService orderservice;

	// 주문 작성폼으로 동시에 oddt insert 하기
	@RequestMapping(value = "order/cartOrder", method = RequestMethod.GET)
	public String getOrder(HttpSession session, OrderDetailVO oddtVO) {
		String sessionId = (String) session.getAttribute("loginId");
		orderservice.setFirstOdmt(); //oddt를 채우기 전 odmt를 채워야 한다
		 ArrayList<String> pdIds = orderservice.getPdId(sessionId); //클라이언트가 장바구니에 넣은 상품들을 가져온다
		orderservice.setOddt(pdIds); //가져온 pdIds를 통해 oddt에 insert를 한다
		System.out.println("여기까진 온거니?");
		return "order/orderForm";
	}

	// 주문 하기
	@RequestMapping(value = "order/orderForm", method = RequestMethod.POST)
	public String insertPd(HttpSession session, OrderMasterVO odmtVO, Model model) {
		String sessionId = (String) session.getAttribute("loginId");
		odmtVO.setcId(sessionId);
		odmtVO.setOdNum(orderservice.selectMaxOdNum());
		odmtVO.setOdSum(0);
		orderservice.setOdmt(odmtVO);
		return "redirect:/main/loginMain";
	}

	// 주문 목록 조회하기
	@RequestMapping(value = "order/orderList", method = RequestMethod.GET)
	public String getOrderList(HttpSession session, Model model) {
		  String sessionId = (String) session.getAttribute("loginId");
		  List orderList = orderservice.getOrderList(sessionId);
		  model.addAttribute("orderList", orderList); 
		 		return "order/orderList";
	}

}
