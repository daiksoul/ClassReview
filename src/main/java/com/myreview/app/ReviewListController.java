package com.myreview.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myreview.app.review.ReviewDAO;
import com.myreview.app.review.ReviewService;
import com.myreview.app.review.ReviewServiceImpl;
import com.myreview.app.review.ReviewVO;

@Controller
@RequestMapping(value="/review")
public class ReviewListController {
	@Autowired
	ReviewService reviewSer;
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String reviewList(Model model) {
		model.addAttribute("list",reviewSer.getReviewList());
		return "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addReview() {
		return "writing";
	}
	
	@RequestMapping(value="/addok", method=RequestMethod.GET)
	public String addReviewOK(ReviewVO vo) {
		int i = reviewSer.insertReview(vo);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editReview(Model model,@PathVariable("id") int id) {
		model.addAttribute("vo", reviewSer.getReview(id));
		return "writing";
	}
	
	@RequestMapping(value="review/editok", method=RequestMethod.GET)
	public String editReviewOK(ReviewVO vo) {
		int i = reviewSer.updateReview(vo);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/list";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String deleteReview(@PathVariable("id")int id) {
		int i = reviewSer.deleteReview(id);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/list";
	}
}
