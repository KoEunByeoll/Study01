<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>실습 페이지-상세 정보-</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
</head>
<body bgcolor="f5ebd9";>
	<form action="<c:url value='/updateMember'/>" method="post">
	<h1 style="color: #282725" style="font-size:40px" align="center";>[웹 페이지 실습]</h1>
	<h2 style="color: #4c4944" style="font-size:30px" align="center";>상세 학생 정보</h2>
	<table style="background: #f5ebd9;" align="center";>
		<tr>
			<td align="center" style="width: 100px; background: #fdf5ea; font-weight: bold; border-top-left-radius: 10px; margin-bottom: -3px;">학번</td>
			<td align="center" style="width: 100px; background: #ffffff; border-top-right-radius: 10px;"><input type="text" name="sid" value="${member.sid}"></td>
		</tr>
		<tr>
			<td align="center" style="width: 100px; background: #fdf5ea; font-weight: bold;">이름</td>
			<td align="center" style="width: 100px; background: #ffffff;"><input type="text" name="name" value="${member.name}"></td>
		</tr>
		<tr>
			<td align="center" style="width: 100px; background: #fdf5ea; font-weight: bold;">전공</td>
			<td align="center" style="width: 100px; background: #ffffff;"><input type="text" name="major" value="${member.major}"></td>
		</tr>
		<tr>
			<td align="center" style="width: 100px; background: #fdf5ea; font-weight: bold; border-bottom-left-radius: 10px;">과목</td>
			<td align="center" style="width: 100px; background: #ffffff; border-bottom-right-radius: 10px;"><input type="text" name="subject" value="${member.subject}"></td>
		</tr>
	</table>
	<div style="text-align: center;">
	<input type="submit" value="수정완료" style="margin-right: -4px; margin-top: 20px; border: 2px solid #282725; 
		background-color: #282725; color: white; padding: 5px; cursor: pointer; border-top-left-radius: 5px; 
		border-bottom-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px;">
		<button type="button" onclick="history.back(-1);"
		style="margin-top: 20px; border: 2px solid #282725; background-color: #282725; color: white; 
		padding: 5px; border-top-right-radius: 5px; border-top-left-radius: 5px; cursor: pointer; border-bottom-right-radius: 5px; 
		border-bottom-left-radius: 5px;">목록</button>
	</div>
</form>
</body>
</html>