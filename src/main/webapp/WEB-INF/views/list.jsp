<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.myreview.app.review.ReviewVO"%>
<!DOCTYPE html>
<html>
<head>
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
		if(a) location.href='delete/' + id;	
	}
</script>

</head>
<body class="text-center" class="container">

<div class="container">
  <div class="jumbotron">
    <h1>CSEE 강의 리뷰 게시판</h1>
    <p> 수강 후 전산전자공학부 학생들이 작성한 강의 리뷰 목록입니다.</p>
  </div>
</div>


<table class="table">
<tr>
	<th>ID</th>
	<th>Title</th>
	<th>Professor</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Rating</th>
	<th>Semester</th>
	<th>Author</th>
	<th>Edit</th>
	<th>Delete</th>
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
		<td>${usermap.get(u.getAuthor()) }</td>
		<c:choose>
		<c:when test="${u.getAuthor() eq sessionId || sessionId == 1 }">
			<td><a href="edit/${u.getId()}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.getId()}')">Delete</a></td>
		</c:when>
		<c:otherwise>
			<td>
			<td>
		</c:otherwise>
		</c:choose>
	</tr>
	</c:forEach>
</table>
<!-- <button class="addBtn" href="add">리뷰 추가</button> -->

</body>
</html>