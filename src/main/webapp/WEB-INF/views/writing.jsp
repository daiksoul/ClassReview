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

<label for="semester-select">수강 학기를 선택하세요:</label>
<select id="semester-select">
    <optgroup label="2019">
        <option>1학기</option>
        <option>2학기</option>
    </optgroup>
    <optgroup label="2020">
        <option>1학기</option>
        <option>2학기</option>
    </optgroup>
    <optgroup label="2021">
        <option>1학기</option>
        <option>2학기</option>
    </optgroup>
</select>

<br> <br>

<label for="lecture-select">수강한 강의를 선택하세요:</label> <br>
<label class="test_obj">
    <input type="radio" name="lecturet" value="L1">
    <span>실전프로젝트1</span>
</label>
 
<label class="test_obj">
    <input type="radio" name="lecture" value="L2">
    <span>c프로그래밍 실습</span>
</label>

<label class="test_obj">
    <input type="radio" name="lecture" value="L3">
    <span>진로와 직업설계</span>
</label>

<label class="test_obj">
    <input type="radio" name="lecture" value="L4">
    <span>캡스톤 디자인</span>
</label>

<br> <br>
<form>
  <textarea>한학기 수강 후 느낀점이나 개선사항을 적어주세요.</textarea>
</form>

</body>
</html>