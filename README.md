# ClassReview

##만들어보고 싶은 서비스
한동대학교 전산전자공학부 학생들에게 강의 수강 후 느낀점 또는 개선사항에 대한 글을 작성,수정,삭제,조회할 수 있는 ‘강의 리뷰 플랫폼’ 웹 서비스를 제작한다. 이때 로그인 정보를 입력하도록 하여 글 작성자만이 글을 조회,수정,삭제할 수 있도록 한다.

#다루어야 하는 데이터 구상
제목(text), 교수님(text), 내용(text), 등록 시간(timestamp), 평점(int), 수강한 시기-연도/학기(int), 학번(text), 비번(text)

#CRUD 기능별 예상 동작 설명
로그인페이지에서 로그인을 하면 해당 사용자는 강의리뷰게시판 메인에서 강의리뷰를 등록할 수 있고, 등록이 완료되면 로그아웃을 할 수 있다. 또한 로그인 정보를 확인하여 해당 글 작성자만이 조회, 수정, 삭제할 수 있다. 모든 강의 리뷰 목록을 확인할 수 있지만 다른 작성자의 강의 리뷰 상세보기는 불가능하도록 구현한다.
