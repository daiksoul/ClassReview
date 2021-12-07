package com.myreview.app.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public int insertReview(ReviewVO vo) {
		return reviewDAO.insertReview(vo);
	}

	@Override
	public int deleteReview(int id) {
		return reviewDAO.deleteReview(getReview(id));
	}

	@Override
	public int updateReview(ReviewVO vo) {
		return reviewDAO.updateReview(vo);
	}

	@Override
	public ReviewVO getReview(int id) {
		return reviewDAO.getReview(id);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		return reviewDAO.getReviewList();
	}
	
}
