package com.myreview.app.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	@Autowired
	SqlSession session;
	
	public int insertReview(ReviewVO vo) {
		int result = session.insert("com.myreview.app.review.ReviewService.insertReview",vo);
		return result;
	}
	
	public int updateReview(ReviewVO vo) {
		int result = session.update("com.myreview.app.review.ReviewService.updateReview", vo);
		return result;
	}
	
	public int deleteReview(int id) {
		int result = session.delete("com.myreview.app.review.ReviewService.deleteReview", id);
		return result;
	}
	
	public ReviewVO getReview(int id) {
		ReviewVO one = session.selectOne("com.myreview.app.review.ReviewService.getReview",id);
		return one;
	}
	
	public List<ReviewVO> getReviewList(){
		List<ReviewVO> list = session.selectList("com.myreview.app.review.ReviewService.getReviewList",null);
		return list;
	}
}
