<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그 연습</title>
</head>
<body>
	<center>
		<h1>Hello World</h1>
		<h2>Hello World</h2>
		<h3>Hello World</h3>
		<h4>Hello World</h4>
		<h5>Hello World</h5>
		<h6>Hello World</h6>
		<h5>Hello World</h5>
		<h4>Hello World</h4>
		<h3>Hello World</h3>
		<h2>Hello World</h2>
		<h1>Hello World</h1>

		<table border='1' cellspacing='0' cellpadding='10'>
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
			</tr>
			<tr>
				<td>1</td>
				<td>안녕1</td>
				<td>재현1</td>
			</tr>
			<tr>
				<td>2</td>
				<td>안녕2</td>
				<td>재현2</td>
			</tr>
			<tr>
				<td>3</td>
				<td>안녕3</td>
				<td>재현3</td>
			</tr>
		</table>

		<img src='/helloweb/images/chicken.jpg' style='border: 1px solid #999' />
		<!-- 절대경로: 문서의 처음부터 지정 -->
		<img src='images/chicken.jpg' style='border: 1px solid #999' /><br>
		<!-- 상대경로: 현재 위치에서지정 -->
		<a href='Form.jsp'>폼으로 가기</a>
							<!-- 이름 : 값 & 이름 : 값-->
		<a href='Hello.jsp?name=kickscar&email=k@gmail.com'>Hello</a>

		<p>BBQ는 더 풍부한 행복을 만들기 위해 고객의 입맛과 마음을 연구합니다.<br>
		 BBQ가 있는 곳 어디서나 행복한 만남이 이루어집니다.<br>
		  사회 윤리적 기업으로 책임과 역할을 다하여 모두가 행복해지는 세상을 만들어가겠습니다.</p>




	</center>
</body>
</html>