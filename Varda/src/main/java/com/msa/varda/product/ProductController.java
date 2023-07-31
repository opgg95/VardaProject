package com.msa.varda.product;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpHeaders;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ProductController {
	
	@Autowired IProductService productService;
	
	
	  @RequestMapping(value="/") public String goMain() { 
		  return "main/logoutMain";
	  }
	 

	// 상품 목록 조회
	@RequestMapping(value = "product/productList",method = RequestMethod.POST)
	public String getPdList(
			@RequestParam(value = "pd_type") String pd_type,
			@RequestParam(value = "gender") int gender,
			@RequestParam(value = "skin_type") String skin_type,
			Model model, RedirectAttributes redirectAttributes) {
		
		List<ProductVO> products = productService.getProductList(pd_type,gender,skin_type);
		System.out.println(products);
			if(products!=null) {

				model.addAttribute("products", products);
			}
		return "product/productList";
		
	}



	// 상품 상세 페이지 조회
	@RequestMapping(value = "product/productInfo/{pdId}")
	public String getPdInfo(ProductVO productVO, @PathVariable(value = "pdId") String pdId,Model model) {
			
		productVO = productService.getProductInfo(pdId);
		model.addAttribute(
				"productVO", productVO);
		model.addAttribute("pdId", pdId);
		return "product/productInfo";	
	
	}
	
	  //상품 등록 폼으로
	  
	  @RequestMapping(value="product/addProduct") 
	  public String addProduct() {
	  return "product/addProductForm"; 
	  }
	 
	  

	  
	// 상품 등록
	@RequestMapping(value = "product/addProductForm" ,method = RequestMethod.POST)
	public String insertPd(ProductVO productVO, 
							RedirectAttributes redirectAttributes,
							Model model,
							@RequestParam MultipartFile file1,
							@RequestParam MultipartFile file2) throws IOException {
		
		productVO.setPdId(productService.makeProductId(productVO.getPdType(), productVO.getGender(),productVO.getSkinType()));
		
		if(file1!=null && !file1.isEmpty()) {
			productVO.setPdImg(file1.getBytes());
		 }
		if(file2!=null && !file2.isEmpty()) { 
			productVO.setPdSubImg(file2.getBytes());                            
		  }
		productService.insertProduct(productVO);
		
		redirectAttributes.addFlashAttribute("message", 
				"상품 " + productVO.getPdId() + "의 등록이 완료되었습니다.");
		System.out.println("productVO.getPdId():"+productVO.getPdId());
		
		
		return "redirect:/product/productInfo/"+ productVO.getPdId();
	}
	/*
		 * //이미지파일을 경로 문자열로 저장 productVO.setPdImg("c:/temp/"+newFileName1.getName());
		 * productVO.setPdSubImg("c:/temp/"+newFileName2.getName());
		 * File newFileName1 = 
			new File("c:/temp/"+file1.getOriginalFilename().substring(0,  file1.getOriginalFilename().indexOf('.'))+UUID.randomUUID()+file1.getOriginalFilename().substring(file1.getOriginalFilename().indexOf('.')));
		File newFileName2 = 
				new File("c:/temp/"+file2.getOriginalFilename().substring(0,  file2.getOriginalFilename().indexOf('.'))+UUID.randomUUID()+file2.getOriginalFilename().substring(file2.getOriginalFilename().indexOf('.')));
		
		 * System.out.println("fileName:" +newFileName1.getName());
		 * System.out.println("orgFileName:" +newFileName2.getName());
		 * 
		 * System.out.println(newFileName1.getPath()); try {
		 * file1.transferTo(newFileName1); file2.transferTo(newFileName2); } catch
		 * (Exception e) { e.printStackTrace(); }
		 */
		

}
