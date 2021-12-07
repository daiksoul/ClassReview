package com.myreview.app.review;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	int id;
	String title;
	String professor;
	String content;
	Timestamp regdate;
	int rating;
	int semester;
	int author;	
}
