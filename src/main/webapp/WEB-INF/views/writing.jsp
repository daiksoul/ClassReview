<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 리뷰 등록하기</title>

<style> 
textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}

.test_obj input[type="radio"] {
        display: none;
    }
 
    .test_obj input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
    }
 
    .test_obj input[type="radio"]:checked + span {
        background-color: #113a6b;
        color: #ffffff;
    }
    
</style>

</head>
<body>

<form action="review/addok" method="post">
<label for="semester-select">수강 학기를 선택하세요:</label>
<select id="semester-select" name="semester">
	<c:forEach var="i" begin="2019" end="2021" step="1">
    <optgroup label="${i}">
        <option value="${i*10+1}">1학기</option>
        <option value="${i*10+1}">2학기</option>
    </optgroup>
    </c:forEach>
</select>

<br> <br>

<label for="lecture-select">수강한 강의를 선택하세요:</label> <br>
<label class="test_obj">
    <input type="radio" name="title" value="L1">
    <span>실전프로젝트1</span>
</label>
 
<label class="test_obj">
    <input type="radio" name="title" value="L2">
    <span>c프로그래밍 실습</span>
</label>

<label class="test_obj">
    <input type="radio" name="title" value="L3">
    <span>진로와 직업설계</span>
</label>

<label class="test_obj">
    <input type="radio" name="title" value="L4">
    <span>캡스톤 디자인</span>
</label>

<br> <br>
  <textarea name="content">한 학기 수강 후 느낀점이나 개선사항을 적어주세요.</textarea>
</form>

</body>
</html>