<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 출력</h1>
	${ival } <br/>
	${lval } <br/>
	${bval } <br/>
	${fval } <br/>
	${sval } <br/>
	
	<h1>객체 출력</h1>
	--${obj }-- <br/>
	${vo.no } <br/>
	${vo.name } <br/>
	
	<h1>관계 연산</h1>
	${ival > 10 } <br/>
	${ival < 5 } <br/>
	${obj == null } <br/>
	${obj != null } <br/>
	${empty obj } <br/>
	${not empty obj } <br/>
</body>
</html>