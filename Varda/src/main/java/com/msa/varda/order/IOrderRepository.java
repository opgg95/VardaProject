package com.msa.varda.order;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface IOrderRepository {
	
	   int selectMaxOdNum(); //OdNum(주문번호) 최대값 불러오기
	   ArrayList<String> getPdId(String cId);
	   int getCheckedPdPrice(String pdId);
	   void setOddt(OrderDetailVO oddtVO);
	   void setFirstOdmt(OrderMasterVO odmtVO);
	   void setOdmt(OrderMasterVO odmtVO);
		int selectMaxOdOrder();
		List getOrderList(String cId);
		
		/*
		 * int getCheckedPdPrice(String pdId); //OdPrice(상품구매금액) 불러오기 void
		 * setFirstOdmt(OrderMasterVO odmtVO); //주문이 실행되는 순간 주문번호를 생성하여 order master에 먼저
		 * 넣어주기
		 * 
		 * void setOrderDetail(OrderDetailVO oddtVO); //OrderDetail테이블에 값 입력하기 int
		 * getSumOdPrice(int odNum); void setOrderMaster(OrderMasterVO odmtVO);
		 * //OrderMaster테이블에 값 입력하기 void deleteOrderPd(@Param("odNum")int
		 * odNum, @Param("cId")String sessionId); //주문한 상품은 장바구니에서 지워주기
		 * List<OrderMasterVO> getOrderList(String cId); //지정한 고객이 주문한 상품목록 조회하기
		 * OrderDetailVO getCartPdList(String sessionId);
		 */
	
	

	


}
