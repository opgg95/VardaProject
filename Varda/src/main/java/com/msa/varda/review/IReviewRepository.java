package com.msa.varda.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface IReviewRepository {
	
	void writeReview(@Param("sessionId")String sessionId, @Param("pdId")String pdId);
	void writeReview(ReviewVO reviewVO);
	List<ReviewVO> getReviewList(String pdId);
	
}
