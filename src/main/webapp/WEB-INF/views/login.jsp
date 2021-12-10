<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>실전프로젝트1 팀프로젝트</title> 
<style>
	img, label { display:inline-block;}
	label{ width:150px}
	button{ background-color:grey; color:white; font-size:15px;}
	
</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
</head>

<body class="text-center" class="container">


<div class="container">
  <div class="jumbotron">
  	<h4>한동대학교 전산전자공학부</h4>
    <h1>CESS</h1>
	<h3>강의 리뷰 게시판</h3>
    <div style='width:90%;text-align:center;padding-top:60px'> 
	<form method="post" action="loginOk">
	<div><label>ID: </label><input type='text' name='userid' placeholder="아이디를 입력하세요.."/></div> 
	<br>
	<div><label>PW: </label><input type='password' name='password' placeholder="비밀번호를 입력하세요.."/></div> 
	<br>
	
	<div style = "width: 800px; height: 100px; float:center;">
	<button type='submit'>로그인</button>
	</div>
	</form>
	</div>
  </div>
</div>

</body> 
</html>