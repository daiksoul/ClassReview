package com.myreview.app.user;

@Controller 
@RequestMapping(value="/login")
public class UserController {
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String login() {
		return "login"; }
	}

	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session,UserVO vo) {
		String returnURL = "";
		if ( session.getAttribute("login") != null ){
			session.removeAttribute("login");
		}
		
		UserVO loginvo = service.getUser(vo);
		if ( loginvo != null ){ // 로그인 성공 
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/board/list"; 
		}else { // 로그인 실패
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login"; 
		}
		return returnURL; 
	}
	
	// 로그아웃 하는 부분 
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login"; 
	}
	
