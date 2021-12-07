package com.myreview.app.review;

import java.util.List;

public interface ReviewService {
	public int insertReview(ReviewVO vo);
	public int deleteReview(int id);
	public int updateReview(ReviewVO vo);
	public ReviewVO getReview(int id);
	public List<ReviewVO> getReviewList();
}
