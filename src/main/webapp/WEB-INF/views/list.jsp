<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.myreview.app.review.ReviewVO"%>
<!DOCTYPE html>
<html>
<head>
<style>
#list {
  border-collapse: collapse;
  width: 90%;
  margin: auto;
  text-align: center;
  border-radius: 10px; !improtant;
  border: 1px solid white !important;
}

#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: white;
  
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하시겠습니까?");
		if(a) location.href='deleteok/' + id;	
	}
</script>

</head>
<body class="text-center" class="container">

<div class="container">
  <div class="jumbotron">
    <h2>CSEE 강의 리뷰 게시판</h1>
    <p> 전산전자공학부 학생들이 작성한 강의 리뷰 목록입니다.</p>
    <input type="button" value="강의 리뷰 등록" onClick="location.href='../review/add'" >
    <input type="button" value="로그아웃" onClick="location.href='../login/logout'" >
  </div>
</div>

<br> <br>
<table class="table" id = "list" width="90%">
<tr>
	<th>ID</th>
	<th>Title</th>
	<th>Professor</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Rating</th>
	<th>Semester</th>
	<th>Author</th>
	<th></th>
	<th></th>
</tr>
	<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getId()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getProfessor() }</td>
		<td>${u.getContent() }</td>
		<td>${u.getRegdate() }</td>
		<td>${u.getRating() }</td>
		<td>${u.getSemester() }</td>
		<td>${u.getAuthor() }</td>
		<td><a href="editform/${u.getId()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getId()}')">Delete</a></td>
	</tr>
	</c:forEach>
</table>

</body>
</html>