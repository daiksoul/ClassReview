package com.myreview.app.review;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class ReviewVO {
	private int id;
	private String title;
	private String professor;
	private String content;
	private Date regdate;
	private int rating;
	private int semester;
	private int author;
	
	public ReviewVO() {
		
	}
}
