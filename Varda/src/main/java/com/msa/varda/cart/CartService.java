package com.msa.varda.cart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CartService implements ICartService{

	@Autowired
	ICartRepository cartRepository ;
	
	@Override
	public List getCartList(String sessionId) {
		String cId = sessionId;
		return cartRepository.getCartList(cId);
	}

	@Transactional
	public void addCart(CartVO cartVO) {
		cartVO.setCartNum(cartRepository.selectMaxCartNum()+1); 
		cartRepository.addCart(cartVO);
 
	}

	@Transactional
	public void deleteCart(String sessionId, int cartNum) {
		cartRepository.deleteCart(sessionId, cartNum);
	}

	@Override
	public FileVO getFile(String id) {
		return cartRepository.getFile(id);
	}

	@Override
	public FileVO getSubFile(String id) {
		return cartRepository.getSubFile(id);
	}

}
