<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	background-image: url("img/sky.jpg");
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
</style>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>

<table width="100%" height="1000px"  cellpadding="2" cellspacing="0">
<tr>
	<td colspan="2" height="100px">
		<jsp:include page="top.jsp"/>
	</td>
</tr>

<tr>
<td width="20%" align="top">
	</td>
	
	<td width="80%"  valign="top">
		<jsp:include page="<%=contentPage%>"/>
	</td>
</tr>

<tr>
	<td colspan="2" height="70px">
		<jsp:include page="bottom.jsp"/>
	</td>
</tr>
</table>
</body>
</html>