package com.msa.varda.cart;

import java.util.Arrays;


import org.springframework.web.multipart.MultipartFile;

public class CartVO {
	private int cartNum;
	private String cId;
	private String pdId;
	
	
	public CartVO() {
		super();
	}


	public CartVO(int cartNum, String cId, String pdId) {
		super();
		this.cartNum = cartNum;
		this.cId = cId;
		this.pdId = pdId;
	}


	public int getCartNum() {
		return cartNum;
	}


	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}


	public String getcId() {
		return cId;
	}


	public void setcId(String cId) {
		this.cId = cId;
	}


	public String getPdId() {
		return pdId;
	}


	public void setPdId(String pdId) {
		this.pdId = pdId;
	}


	@Override
	public String toString() {
		return "CartVO [cartNum=" + cartNum + ", cId=" + cId + ", pdId=" + pdId + "]";
	}
	
	
}
