package com.msa.varda.customer;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface ICustomerRepository {
	void joinCustomer(CustomerVO customerVO); // 회원가입 정보 가져오기
	CustomerVO selectCustomerVO(String cId);
	// List<CustomerVO>selectAllCustomerVOs();
//	CustomerVO login(@Param("id")String id, @Param("pwd")String pwd); //로그인한 회원 정보가쟈오기
	void updateCustomer(CustomerVO customerVO); // 회원업데이트 정보 가져오기
	String getcPwd(String cId);
	int idCheck(String id);   
	CustomerVO updateCustomerInfo(String cId);
	void updateInfo(CustomerVO customerVO);
	CustomerVO getInfo(CustomerVO customerVO);
//	boolean isDuplicateId(@Param("id")String id, String cId);
}
