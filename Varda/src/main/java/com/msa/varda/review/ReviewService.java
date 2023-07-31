package com.msa.varda.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class ReviewService implements IReviewService{

	
	  @Autowired IReviewRepository reviewRepository;
	  
		/*
		 * @Transactional public void writeReview(ReviewVO reviewVO) {
		 * reviewRepository.writeReview(reviewVO);
		 * 
		 * }
		 * 
		 * @Override public List<ReviewVO> getReviewList(String pdId) { List<ReviewVO>
		 * reviewList = reviewRepository.getReviewList(pdId); return reviewList; }
		 * 
		 */
		@Transactional
		public void writeReview(String sessionId, String pdId) {
			reviewRepository.writeReview(sessionId, pdId);
			
		}
	
		@Transactional
		public void writeReview(ReviewVO reviewVO) {
			 reviewRepository.writeReview(reviewVO);
			
		}
	
		@Override
		public List<ReviewVO> getReviewList(String pdId) {
			List<ReviewVO> reviewList = reviewRepository.getReviewList(pdId);
			return reviewList;
		}


}
