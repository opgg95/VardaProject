package com.msa.varda.product;

import java.util.List;

public interface IProductService {
	
	List<ProductVO> getProductList(String pd_type,int gender,String skin_type); //해당하는 카테고리에 따른 상품목록 조회하기
	ProductVO getProductInfo(String pdId); //지정한 상품의 모든 정보 조회하기
	String makeProductId(int gender,int skinType, int pdType); //상품의 아이디를 만들어주기
	void insertProduct(ProductVO  productVO); // 상품 등록하기

}
