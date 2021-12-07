package com.myreview.app.review;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int id;
	private String title;
	private String professor;
	private String content;
	private Timestamp regdate;
	private int rating;
	private int semester;
	private int author;	
}
