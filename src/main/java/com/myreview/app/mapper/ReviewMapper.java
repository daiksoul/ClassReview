package com.myreview.app.mapper;

import java.util.List;

import com.myreview.app.review.ReviewVO;

public interface ReviewMapper {
	void insertReview(ReviewVO reviewVO);
	void updateReview(ReviewVO reviewVO);
	void deleteReview(ReviewVO reviewVO);
	ReviewVO getReview(int id);
	List<ReviewVO> getReviewList();
}
