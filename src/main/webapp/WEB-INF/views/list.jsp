<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.myreview.app.review.ReviewVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
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
	</tr>
	</c:forEach>
</table>
</body>
</html>