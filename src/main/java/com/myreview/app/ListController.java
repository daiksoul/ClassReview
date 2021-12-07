package com.myreview.app;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ListController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value="/list",method= RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		
		
		model.addAttribute("reviews", model);
		
		return "list";
	}
	
}