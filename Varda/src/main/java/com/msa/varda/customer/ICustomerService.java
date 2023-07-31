package com.msa.varda.customer;

public interface ICustomerService {
	void joinCustomer(CustomerVO customerVO);
	CustomerVO selectCustomerVO(String cId);
//	List<CustomerVO> selectAllCustomerVOs();
//	CustomerVO login(String id, String pwd);
	void updateCustomer(CustomerVO customerVO);
	String getcPwd(String cId);
	boolean idCheck(String id);
	CustomerVO updateCustomerInfo(String cId);
	void updateInfo(CustomerVO customerVO);
	boolean getInfo(CustomerVO customerVO);
//	boolean isDuplicateId(String cId, String id);
}
