<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>실습 페이지-전체 정보-</title>
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
<body bgcolor="#f5ebd9";>
	<h1 style="color: #282725" style="font-size:40px" align="center";>
		[웹 페이지 실습]</h1>
	<h2 style="color: #4c4944" style="font-size:30px" align="center";>
		전체 학생 목록</h2>
	<table style="background: #f5ebd9;" align="center";>
		<tr>
			<th>상태</th>
			<th>순서</th>
			<th>학번</th>
			<th>이름</th>
			<th>전공</th>
			<th>과목</th>
		</tr>

		<tbody style="background: #fdf5ea;">
			<c:forEach var="member" items="${memberList}" varStatus="status">
				<tr>
					<td type="button"
						onclick="location.href='deleteMember/${member.sid}'"
						style="border-bottom-right-radius: 5px; border-top-right-radius: 5px; 
						border-bottom-left-radius: 5px; border-top-left-radius: 5px; border-bottom-right-radius: 5px; 
						color: #ffffff; cursor: pointer; background-color: #282725;">삭제</td>
					<td style="width: 80px; text-align: center"><a
						href="selectOneMember/${member.sid}">${status.index+1}</a></td>
					<td style="width: 100px; text-align: center">${member.sid}</td>
					<td style="width: 100px; text-align: center">${member.name}</td>
					<td style="width: 150px; text-align: center">${member.major}</td>
					<td style="width: 150px; text-align: center">${member.subject}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<div style="text-align: center;">
		<button type="button" onclick="location.href='insertMemberPage'"
			style="margin-top: 20px; color: white; border: 2px; solid #282725; 
			background-color: #282725; padding: 5px; border-top-right-radius: 5px; 
			border-top-left-radius: 5px; cursor: pointer; border-bottom-right-radius: 5px; 
			border-bottom-left-radius: 5px;">학생등록</button>
	</div>
	
	<img src="http://localhost:8080/webapp/resources/img/COMPANY.png">
	
</body>
</html>