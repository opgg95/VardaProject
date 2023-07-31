package com.msa.varda.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CustomerService implements ICustomerService{
	
	@Autowired
	ICustomerRepository customerRepository;
	
	
	@Override
	public void joinCustomer(CustomerVO customerVO) {
		customerRepository.joinCustomer(customerVO);
	}
	
	@Override
	public void updateCustomer(CustomerVO customerVO) {
		customerRepository.updateCustomer(customerVO);
	}
	
	@Override
	public boolean getInfo(CustomerVO customerVO) {
		boolean isOk=false;
		if(customerRepository.getInfo(customerVO)!=null) {
			isOk=true;
		}else {
			isOk=false;
		}
		//return memberRepository.getInfo(member)!=null ? true:false;
		return isOk;
	}
	
	@Override
	public String getcPwd(String cId) {
		 return customerRepository.getcPwd(cId);
		
	}

	@Override
	public CustomerVO selectCustomerVO(String cId) {
		return customerRepository.selectCustomerVO(cId);
		
	}
	@Override
	public boolean idCheck(String id) {
		int count= customerRepository.idCheck(id);
		return count==0 ?true:false; //id건수가 있으면 사용불가,id건수가 0이면 사용가능
	}
	   @Override
	   public CustomerVO updateCustomerInfo(String cId) {
	      return customerRepository.updateCustomerInfo(cId);
	   }
	   
	   @Transactional
	   public void updateInfo(CustomerVO customerVO) {
	      customerRepository.updateInfo(customerVO);
	   }


	


}
