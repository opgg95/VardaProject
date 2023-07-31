package com.msa.varda.cart;

import java.util.List;


public interface ICartService {
	List getCartList(String sessionId); // 지정한 고객의 장바구니 목록 조회
	void addCart(CartVO cartVO); // 장바구니 DB에 추가
	void deleteCart(String sessionId, int cartNum); // 장바구니 DB 삭제
	FileVO getFile(String id);
	FileVO getSubFile(String id);
}
