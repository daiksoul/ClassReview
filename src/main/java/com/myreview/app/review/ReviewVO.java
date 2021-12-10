package com.myreview.app.review;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

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
	
	private static SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일 kk시mm분ss초");
	
	public ReviewVO() {
		
	}
	
	public String getTimeString() {
		return format.format(regdate);
	}
	
	public String getSemesterString() {
		return ""+this.semester/10+"-"+this.semester%10;
	}
}
