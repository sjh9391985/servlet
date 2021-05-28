<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 받아오기</h1>
	${ival}
	<br /> ${lval}
	<br /> ${fval}
	<br /> ${sval}
	<br /> ${fval}
	<br /> ${bval}
	<br />
	<hr>

	<h1>객체 출력하기</h1>
	${ obj }
	<br> ${vo.no}
	<br> ${vo.name}
	<br>
	<hr>

	<h1>산술 연산</h1>
	${3* 10+20}
	<br> ${ival +30 *3}
	<br>
	<hr>

	<h1>관계 연산</h1>
	${ival > 0}
	<br> ${sval == "ads"}
	<br> ${obj == null}
	<br> ${obj != null}
	<br> ${empty obj }
	<br> ${not empty vo}


</body>
</html>