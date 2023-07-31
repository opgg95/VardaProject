package com.msa.varda.order;

import java.util.ArrayList;
import java.util.List;

public interface IOrderService {
		
	int selectMaxOdNum(); //OdNum(주문번호) 최대값 불러오기
		void setFirstOdmt(); //주문이 시작되는 순간 주문번호부터 생성하여 odmaster에 넣어주기
		 ArrayList<String> getPdId(String sessionId);
		void setOddt( ArrayList<String> pdIds);
		void setOdmt(OrderMasterVO odmtVO);
		List getOrderList(String sessionId);
		
		/*
		 * void setOrderDetail(ArrayList<String> checkPdList, String sessionId);
		 * //OrderDetail테이블에 값 입력하기 OrderDetailVO getCartPdList(String sessionId);
		 * 
		 * void setOrderMaster(String sessionId,OrderMasterVO odmtVO); //OrderMaster테이블에
		 * 값 입력하기 void deleteOrderPd(int odNum, String sessionId); //주문한 상품은 장바구니에서 지워주기
		 * List<OrderMasterVO> getOrderList(String sessionId); //지정한 고객이 주문한 상품목록 조회하기
		 */
	

	
}
