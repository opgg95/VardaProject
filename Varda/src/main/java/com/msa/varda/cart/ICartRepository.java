package com.msa.varda.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;




@Repository
@Mapper
public interface ICartRepository {
	List getCartList(String cId); // 지정한 고객의 장바구니 목록 조회
	void addCart(CartVO cartVO); // 장바구니 DB에 추가
	void deleteCart(@Param("cId")String sessionId, @Param("cartNum")int cartNum); // 장바구니 DB 삭제
	int selectMaxCartNum();
	FileVO getFile(String id);
	FileVO getSubFile(String id);
	
	/* MultipartFile getFileImg(String PdId); */
	/*
	 * CartVO getFileImg(String PdId); int getPdPriceByPdId(String PdId);
	 */
}
