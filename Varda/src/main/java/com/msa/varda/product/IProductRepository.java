package com.msa.varda.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface IProductRepository {
	
	List<ProductVO> getProductList(@Param("pdType")int pdType, @Param("gender")int gender,@Param("skinType")int skinType); //해당하는 카테고리에 따른 상품목록 조회하기
	ProductVO getProductInfo(String pdId); //지정한 상품의 모든 정보 조회하기
	void insertProduct(ProductVO productVO); // 상품 등록하기
	int makeProductId(); //상품의 아이디를 만들어주기

}
