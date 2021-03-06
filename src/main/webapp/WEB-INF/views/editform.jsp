<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 리뷰 수정하기</title>
<script>

window.onload = function(){
	getCheckedCnt(${vo.getRating()});
	document.querySelectorAll('input[name="title"]').forEach(function(item){
		if(item.value=="${vo.getTitle()}"){
			item.checked=true;
		}
	});
	
	document.querySelectorAll('input[name="professor"]').forEach(function(item){
		if(item.value=="${vo.getProfessor()}"){
			item.checked=true;
		}
	});
	
	
	document.querySelectorAll('option').forEach(function(item){
		if(item.value==${vo.getSemester()}){
			item.selected= true;
		}
	});
}

function getCheckedCnt(val)  {
	for(let i = 1; i<=5 ;i++){
		const element = document.getElementById("check"+i);
		if(i<=val)
			element.checked = true;
		else
			element.checked = false;
	}
	
	// 선택된 목록 가져오기
	  const query = 'input[class="grade"]:checked';
	  const selectedElements = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록의 갯수 세기
	  const selectedElementsCnt =
	        selectedElements.length;
	  
	  // 출력
	  document.getElementById('result').innerText
	    = selectedElementsCnt;
	}
	
</script>

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

input[type=button], input[type=submit], input[type=reset] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

</style>

</head>
<body>

<form action="../editok" method="post">
<input type="hidden" name="id" value="${vo.getId() }"/>
<input type="hidden" name="author" value="${vo.getAuthor() }"/>
<label for="semester-select">수강 학기를 선택하세요:</label>
<select id="semester-select" name="semester">
	<c:forEach var="i" begin="2019" end="2021" step="1">
    <optgroup label="${i}">
        <option value="${i*10+1}">1학기</option>
        <option value="${i*10+2}">2학기</option>
    </optgroup>
    </c:forEach>
</select>

<br> <br>

<label for="lecture-select">수강한 강의를 선택하세요:</label> <br>
<label class="test_obj">
    <input type="radio" name="title" value="실전프로젝트1">
    <span>실전프로젝트1</span>
</label>
 
<label class="test_obj">
    <input type="radio" name="title" value="c프로그래밍 실습">
    <span>c프로그래밍 실습</span>
</label>

<label class="test_obj">
    <input type="radio" name="title" value="진로와 직업설계">
    <span>진로와 직업설계</span>
</label>

<label class="test_obj">
    <input type="radio" name="title" value="캡스톤 디자인">
    <span>캡스톤 디자인</span>
</label>

<br> <br>
<label for="lecture-select">수강한 교수님을 선택하세요:</label> <br>
<label class="test_obj">
    <input type="radio" name="professor" value="김광 교수님">
    <span>김광 교수님</span>
</label>
 
<label class="test_obj">
    <input type="radio" name="professor" value="장소연 교수님">
    <span>장소연 교수님</span>
</label>

<br> <br>
<label for="lecture-select">평점:</label> 
<input type="checkbox" name='grade1' class="grade" id="check1" onclick='getCheckedCnt(1)'>
<label for="check1"></label>
<input type="checkbox" name='grade2' class="grade" id="check2" onclick='getCheckedCnt(2)'>
<label for="check2"></label>
<input type="checkbox" name='grade3' class="grade" id="check3" onclick='getCheckedCnt(3)'>
<label for="check3"></label>
<input type="checkbox" name='grade4' class="grade" id="check4" onclick='getCheckedCnt(4)'>
<label for="check4"></label>
<input type="checkbox" name='grade5' class="grade" id="check5" onclick='getCheckedCnt(5)'>
<label for="check5"></label>

<div id='result'></div>

<br> <br>
  <textarea name="content">${vo.getContent() }</textarea>

<input type="button" value="Cancel" onClick="location.href='../review/list'" >

<input type="reset" value="Reset">
<input type="submit" value="Submit">
  
</form>

</body>
</html>