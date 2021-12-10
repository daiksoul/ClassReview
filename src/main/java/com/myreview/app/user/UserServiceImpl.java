package com.myreview.app.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
	
	@Autowired
	UserDAO userDAO;
	
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public List<UserVO> getUserList(){
		return userDAO.getUserList();
	}
}
