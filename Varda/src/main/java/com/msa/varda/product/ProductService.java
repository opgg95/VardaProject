package com.msa.varda.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	IProductRepository productRepository;

	@Override
	public List<ProductVO> getProductList(String pd_type,int gender,String skin_type) {
		int pdType=0;
		int skinType=0;
		
		switch(pd_type) {
		case "스킨" : pdType=1; break;
		case "로션" : pdType=2; break;
		case "수분크림" : pdType=3; break;
		case "앰플&세럼" : pdType=4; break;
		case "마스크팩" : pdType=5; break;
		case "미스트" : pdType=6; break;
		}
		
		switch(skin_type) {
		case "건성" : skinType=1; break;
		case "지성" : skinType=2; break;
		case "복합성" : skinType=3; break;
		}
		
		//List<ProductVO> products = productRepository.getProductList(pdType,gender,skinType);
		//System.out.println(products);
		//return products;
		return productRepository.getProductList(pdType,gender,skinType);
	}

	@Override
	public ProductVO getProductInfo(String pdId) {
		ProductVO productVO = productRepository.getProductInfo(pdId);
		return productVO;
	}

	@Transactional
	public void insertProduct(ProductVO productVO) {
		productRepository.insertProduct(productVO);
		
	}

	@Override
	public String makeProductId(int pdType, int gender, int skinType) {
		
		/*
		 * switch(gender) { case "남성용" : skinType="1"; break; case "여성용" : skinType="2";
		 * break; }
		 * 
		 * switch(skinType) { case "건성" : skinType="1"; break; case "지성" : skinType="2";
		 * break; case "복합성" : skinType="3"; break; }
		 * 
		 * switch(pdType) { case "스킨" : pdType="1"; break; case "로션" : pdType="2";
		 * break; case "수분크림" : pdType="3"; break; case "앰플&세럼" : pdType="4"; break;
		 * case "마스크팩" : pdType="5"; break; case "미스트" : pdType="6"; break; }
		 */

		String pdIdLast = String.valueOf(productRepository.makeProductId());

		return ("P" + String.valueOf(gender) + String.valueOf(skinType) + String.valueOf(pdType) + pdIdLast);
	}
	
	

}
