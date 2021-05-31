<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <!-- 함수 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("newLine", "\n");
%>	
	
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
	<br /> ${fval}
	<br /> ${bval}
	
	<br /> 	
	<p style="border:1px solid #00f; padding:10px">
	${fn:replace(sval, newLine, "<br>") }
	</p>
	
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
	<hr>

	<h1>논리 연산</h1>
	${ival == 10 && ival < 100}
	<br> ${ival <5 || lval-20 ==0}
	<hr>

	<h1>map 의 값</h1>
	${m.ival}
	<br> ${m.ival}
	<br> ${m.lval}
	<br> ${m.fval}
	<br> ${m.bval}
	<hr>

	<h1>요청 파라미터의 값</h1>
	${param.a}
	<br> ${param.email}
	
	
	
</body>
</html>