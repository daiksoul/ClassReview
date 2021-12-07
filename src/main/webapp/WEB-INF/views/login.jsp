<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h1>CESS</h1>
<h3>강의 리뷰 게시판</h3>


<div>
  <form action="/action_page.php">
    <label for="fname">학번</label>
    <input type="text" id="fname" name="학번" placeholder="학번을 입력하세요..">

    <label for="lname">비밀번호</label>
    <input type="text" id="lname" name="비번" placeholder="비밀번호를 입력하세요..">

  
    <input type="submit" value="로그인">
  </form>
</div>

</body>
</html>