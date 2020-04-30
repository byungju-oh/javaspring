<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.*" %>
    <%@ page import="meatchain.MemberDAO1" %>
    <%@page import="meatchain.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<head>
		<title>Meatchain</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
<body class="is-preload">
<!-- Wrapper-->
			<div id="wrapper">

				<!-- Nav -->
					<nav id="nav">
						
					   <a href="#work" class="icon solid fa-search"><span>조회</span></a>
					   <a href="/meatchain/serch.jsp" class="icon solid fa-step-backward"><span>다시확인</span></a>
					   <a href="/meatchain/index.html" class="icon solid fa-home"><span>Home</span></a>
						
					
					</nav>

	<div id="main">
	<article id="home" class="panel intro">
<%
request.setCharacterEncoding("UTF-8");
String _id = request.getParameter("id");
MemberVO memberVO = new MemberVO();
memberVO.setId(_id);
MemberDAO1 dao=new MemberDAO1();
List membersList=dao.listMembers(memberVO);
%>
<table border=1 width=800 align=center>
<tr align=center bgcolor="#FFFFFF">
<td>인증번호</td>
<td>도축장소</td>
<td>도축시간</td>
<td>등급</td>
<td>성별</td>
</tr>

<%
 for (int i=0; i<membersList.size(); i++){
	 MemberVO vo=(MemberVO) membersList.get(i);
	 String id=vo.getId();
	 String pigwh=vo.getPigwh();
	 String pigti=vo.getPigti();
	 String pigle=vo.getPigle();
	 String pigse=vo.getPigse();
	 %>
	 <tr align=center bgcolor="FFFFFF">
	 <td><%= id%></td>
	 <td><%= pigwh%></td>
	 <td><%= pigti%></td>
	 <td><%= pigle%></td>
	 <td><%= pigse%></td>
	 </tr>
	 <%
 }
%>
</aricle>
</div>

</table>
	<div id="footer">
						<ul class="copyright">
							<li>&copy; 농립축산식품부</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
</div>

	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>