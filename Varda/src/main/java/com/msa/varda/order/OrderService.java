package com.msa.varda.order;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderService implements IOrderService {

	@Autowired
	IOrderRepository orderRepository;

	@Transactional
	public void setFirstOdmt() {
		OrderMasterVO odmtVO = new OrderMasterVO();
		int odNumber = orderRepository.selectMaxOdNum() + 1;
		System.out.println(odNumber);
		odmtVO.setOdNum(odNumber);
		orderRepository.setFirstOdmt(odmtVO);

	}
	
	@Override
		public ArrayList<String> getPdId(String sessionId) {
		ArrayList<String> pdIds = orderRepository.getPdId(sessionId);
			return pdIds;
		}
	
	@Transactional
	public void setOddt( ArrayList<String> pdIds) {
		OrderDetailVO oddtVO = new OrderDetailVO();
		System.out.println(orderRepository.selectMaxOdNum());
        for(int i=0;i<pdIds.size();i++) {
        	oddtVO.setOdNum(orderRepository.selectMaxOdNum());
        	oddtVO.setOdOrder(orderRepository.selectMaxOdOrder()+1);
        	oddtVO.setOdPrice(orderRepository.getCheckedPdPrice(pdIds.get(i)));
        	oddtVO.setPdId(pdIds.get(i));
        	orderRepository.setOddt(oddtVO);
        }
	}

	@Transactional
	public void setOdmt(OrderMasterVO odmtVO) {
		orderRepository.setOdmt(odmtVO);
		
	}

	@Override
	public int selectMaxOdNum() {
		return orderRepository.selectMaxOdNum();
	}

	@Override
	public List getOrderList(String sessionId) {
		List orderList = orderRepository.getOrderList(sessionId);
		return orderList;
	}

	

	/*
	 * //OrderDetail테이블에 값 입력하기
	 * 
	 * @Transactional public void setOrderDetail() { OrderDetailVO oddtVO = new
	 * OrderDetailVO(); System.out.println(orderRepository.selectMaxOdNum()); for
	 * (int i = 0; i < checkPdList.size(); i++) { oddtVO.setOdOrder(i + 1);
	 * oddtVO.setOdNum(orderRepository.selectMaxOdNum());
	 * oddtVO.setPdId(checkPdList.get(i));
	 * oddtVO.setOdPrice(orderRepository.getCheckedPdPrice(checkPdList.get(i)));
	 * orderRepository.setOrderDetail(oddtVO);
	 * orderRepository.deleteOrderPd(oddtVO.getOdNum(), sessionId); }
	 * 
	 * }
	 * 
	 * 
	 * 
	 * 
	 * //OrderMaster테이블에 값 입력하기
	 * 
	 * @Transactional public void setOrderMaster(String sessionId,OrderMasterVO
	 * odmtVO) { odmtVO.setOdNum(orderRepository.selectMaxOdNum());
	 * odmtVO.setcId(sessionId);
	 * odmtVO.setOdSum(orderRepository.getSumOdPrice(odmtVO.getOdNum())); //합계를 구하려면
	 * odnum이 같은 oddetail 에 있는 pdid 에 해당하는 odPrice들을 sum
	 * orderRepository.setOrderMaster(odmtVO); }
	 * 
	 * //주문한 상품은 장바구니에서 지워주기
	 * 
	 * @Transactional public void deleteOrderPd(int odNum, String sessionId) {
	 * deleteOrderPd(odNum, sessionId); }
	 * 
	 * //지정한 고객이 주문한 상품목록 조회하기
	 * 
	 * @Override public List<OrderMasterVO> getOrderList(String sessionId) { String
	 * cId = sessionId; getOrderList(cId); return null; }
	 * 
	 * 
	 * @Override public OrderDetailVO getCartPdList(String sessionId) {
	 * OrderDetailVO oddtVO = orderRepository.getCartPdList(sessionId); return
	 * oddtVO; }
	 */

}
