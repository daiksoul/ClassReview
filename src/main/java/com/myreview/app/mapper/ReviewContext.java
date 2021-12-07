package com.myreview.app.mapper;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.myreview.app.review.ReviewVO;
import com.mysql.cj.Session;

public class ReviewContext {
	private static SqlSessionFactory factory;
	
	static {
		InputStream inStream = null;
		try {
			inStream = Resources.getResourceAsStream("review-mapper.xml");
		} catch (IOException e) {
			e.printStackTrace();
		}
		factory = new SqlSessionFactoryBuilder().build(inStream);
	}
	
	public static void insertReview(ReviewVO reviewVO) {
		SqlSession session = factory.openSession();
		session.insert("insertReview", reviewVO);
	}
	
	
	
}
