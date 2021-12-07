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
		int result = session.insert("Review.insertReview",vo);
		return result;
	}
	
	public int updateReview(ReviewVO vo) {
		int result = session.update("Review.updateReview", vo);
		return result;
	}
	
	public int deleteReview(ReviewVO vo) {
		int result = session.delete("Review.deleteReview", vo);
		return result;
	}
	
	public ReviewVO getReview(int id) {
		ReviewVO one = session.selectOne("Review.getReview",id);
		return one;
	}
	
	public List<ReviewVO> getReviewList(){
		List<ReviewVO> list = session.selectList("Review.getReviewList");
		return list;
	}
}
