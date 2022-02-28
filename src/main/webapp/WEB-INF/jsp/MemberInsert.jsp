<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>실습 페이지-학생 등록-</title>

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
	<div align="center">
		<h1 style="font-size: 30px;">새 학생 등록</h1>
	</div>
	<form action="<c:url value='/insertMember'/>" method="post">
		<div align="center">
			<table>
				<tr>
					<td align="center"
						style="width: 100px; background: #fdf5ea; font-weight: bold; border-top-left-radius: 5px;">학번</td>
					<td align="center"
						style="width: 150px; background: #ffffff; border-top-right-radius: 5px;">
						<input type="text" name="sid">
					</td>
				</tr>
				<tr>
					<td align="center"
						style="width: 100px; background: #fdf5ea; font-weight: bold;">이름</td>
					<td align="center" style="width: 150px; background: #ffffff;">
						<input type="text" name="name" style="border: 2;">
					</td>
				</tr>
				<tr>
					<td align="center"
						style="width: 100px; background: #fdf5ea; font-weight: bold;">전공</td>
					<td align="center"
						style="width: 150px; background: #ffffff;">
						<input type="text" name="major">
					</td>
				</tr>
				<tr>
					<td align="center"
						style="width: 100px; background: #fdf5ea; font-weight: bold; border-bottom-left-radius: 5px;">과목</td>
					<td align="center" style="width: 150px; background: #ffffff; border-bottom-right-radius: 5px;">
						<input type="text" name="subject">
					</td>
				</tr>

			</table>
			<input type="submit" value="추가 완료"
				style="margin-right: 5px;margin-top: 20px; border: 2px solid #282725; background-color: #282725; 
				color: white; padding: 5px; cursor: pointer; border-top-left-radius: 5px; border-bottom-left-radius: 5px;
				border-top-right-radius: 5px; border-bottom-right-radius: 5px;">
				
			<button type="button" onclick="history.back(-1);"
		style="margin-left:-4px; margin-top: 20px; border: 2px solid #282725; background-color: #282725; color: white; 
		padding: 5px; border-top-right-radius: 5px; cursor: pointer; border-bottom-right-radius: 5px;
		border-top-left-radius: 5px; border-bottom-left-radius: 5px;">뒤로가기</button>
		</div>
	</form>
</body>
</html>