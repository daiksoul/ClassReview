package com.myreview.app.user;

@Repository
public class UserDAO {
	@Autowired
	SqlSession Template sqlSession;
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser",vo);
	}
}
