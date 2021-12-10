package com.myreview.app.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	@Autowired
	SqlSession session;
	
	private static String namespace = "Review";
	
	public int insertReview(ReviewVO vo) {
		int result = session.insert(namespace+".insertReview",vo);
		return result;
	}
	
	public int updateReview(ReviewVO vo) {
		int result = session.update(namespace+".updateReview", vo);
		return result;
	}
	
	public int deleteReview(int id) {
		int result = session.delete(namespace+".deleteReview", id);
		return result;
	}
	
	public ReviewVO getReview(int id) {
		ReviewVO one = session.selectOne(namespace+".getReview",id);
		return one;
	}
	
	public List<ReviewVO> getReviewList(){
		List<ReviewVO> list = session.selectList(namespace+".getReviewList");
		return list;
	}
}
