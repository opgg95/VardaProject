package com.msa.varda.review;

import java.util.List;

public interface IReviewService {
	
	/*
	 * void writeReview(ReviewVO reviewVO); List<ReviewVO> getReviewList(String
	 * pdId);
	 */
	
	//리뷰 작성하기 (폼으로 이동
		void writeReview(String sessionId, String pdId);
		
		//리뷰 작성하기
		void writeReview(ReviewVO reviewVO); 
		
		//리뷰 목록
		List<ReviewVO> getReviewList(String pdId);
	  
}
