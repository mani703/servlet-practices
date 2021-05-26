<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
	int count = (int)request.getAttribute("count");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/gb?a=add" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 등록 "></td>
			</tr>
		</table>
	</form> 
	
	<% 
		for(int i = 0; i < count; i++) {
			GuestbookVo vo = list.get(count-i-1);
			String content = vo.getMessage().replace("\r\n", "<br/>");
	%>
			<br>
			<table width=510 border=1>
				<tr>
					<td><%=count-i %></td>
					<td><%=vo.getName() %></td>
					<td><%=vo.getRegDate() %></td>
					<td><a href="<%=request.getContextPath() %>/gb?a=deleteform&no=<%=vo.getNo() %>">삭제</a></td>
				</tr>
				<tr>
					<td colspan=4><%=content %></td>
					
				</tr>
			</table>
	<%
		}
	%>
</body>
</html>