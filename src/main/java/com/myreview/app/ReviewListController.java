package com.myreview.app;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myreview.app.review.ReviewService;
import com.myreview.app.review.ReviewVO;
import com.myreview.app.user.UserServiceImpl;
import com.myreview.app.user.UserVO;

@Controller
@RequestMapping(value="/review")
public class ReviewListController {
	@Autowired
	ReviewService reviewSer;
	
	@Autowired
	UserServiceImpl userSer;
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String reviewList(Model model, HttpSession session) {
		model.addAttribute("list",reviewSer.getReviewList());
		HashMap<Integer,String> map = new HashMap<Integer, String>();
		for(UserVO user: userSer.getUserList()) {
			map.put(user.getId(), user.getUsername());
		}
		model.addAttribute("sessionId", ((UserVO)session.getAttribute("login")).getId());
		model.addAttribute("usermap",map);
		return "list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addReview() {
		return "addpost";
	}
	
	@RequestMapping(value="/addok", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String addReviewOK(ReviewVO vo, HttpServletRequest request, HttpSession session) {
		int id = ((UserVO)session.getAttribute("login")).getId();
		int rating = 0;
		for(int i = 1; i<=5; i++)
			if(request.getParameter("grade"+i)!=null)
				rating++;
		vo.setRating(rating);
		vo.setAuthor(id);
		int i = reviewSer.insertReview(vo);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/review/list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editReview(Model model,@PathVariable("id") int id, HttpSession session) {
		UserVO user = (UserVO)session.getAttribute("login");
		ReviewVO review = reviewSer.getReview(id);
		if(user.getId()==1||user.getId()==review.getAuthor()) {
			model.addAttribute("vo", reviewSer.getReview(id));
			return "editform";
		}
		else {
			return "redirect:/review/list";
		}
	}
	
	@RequestMapping(value="/editok", method=RequestMethod.POST)
	public String editReviewOK(ReviewVO vo,HttpServletRequest request) {
		int rating = 0;
		for(int i = 1; i<=5; i++)
			if(request.getParameter("grade"+i)!=null)
				rating++;
		vo.setRating(rating);
		int i = reviewSer.updateReview(vo);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/review/list";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String deleteReview(@PathVariable("id")int id) {
		int i = reviewSer.deleteReview(id);
		if(i==0)
			System.out.println("FAIL");
		else
			System.out.println("SUCCESS");
		return "redirect:/review/list";
	}
}
