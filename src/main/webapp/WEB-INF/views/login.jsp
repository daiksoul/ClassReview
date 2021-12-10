<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>실전프로젝트1 팀프로젝트</title> 
<style>
	img, label { display:inline-block;}
	label{ width:130px}
	button{ background-color:blue; color:white;font-size:15px}
	
</style>
</head>

<body>

<h1>CESS</h1>
<h3>강의 리뷰 게시판</h3>

<div style='width:100%;text-align:center;padding-top:100px'> 
<form method="post" action="login/loginOk">
<div><label>학번: </label><input type='text' name='userid' placeholder="학번을 입력하세요.."/></div> 
<div><label>비밀번호: </label>
<input type='password' name='password' placeholder="비밀번호를 입력하세요.."/></div> 
<button type='submit'>로그인</button>
</form>
</div>
</body> </html>