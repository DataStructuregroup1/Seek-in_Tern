<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Search </title>
<link rel="stylesheet" type="text/css" href="css/style2.css" />
</head>
<body style="background-color:#273952;">


<br><br>

<div class='title'>

<div class='donut'> <img src='img/snowflake.png'></div>
<center>
<h1> Seekin'tern</h1>
</center>
</div>


<h2>Searches related to </h2> <h3> <%= request.getParameter("keyword") %> </h3> 

<br><br><br><br>

<%
String[][] orderList = (String[][])  request.getAttribute("query");
for(int i =0 ; i < 10;i++){%>
	<div class='sel'>
	<div class='mid'>
	&nbsp;&nbsp;
	<a href='<%= orderList[i][1] %>' style="text-decoration:none;">
	<img src='img/Search1.png'>
	&nbsp;&nbsp;
	<%= orderList[i][0] %>
	</a>
	</div>
	</div>
	
	<br><br><br>
<%
}
%>



</body>