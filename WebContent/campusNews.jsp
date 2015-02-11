<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrapswatch.css">
<link href="css/simple-sidebar.css" rel="stylesheet">

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
 --%>
<style type="text/css">
.newsTicker{
	border:1px solid blue;
	width:250px;
	height:308px;
	padding: 4px 0;
}
.announcement{
	border:1px solid blue;
	width:150px;
	height:300px;
}
.seperator{
	width:150px;
	height:50px;
}
.newsTicker ul{
	list-style: none;
	margin:0;
	padding: 0;
}
.newsTicker ul li{
	background-color: rgb(217, 237, 247);
   	margin:2px 4px; 
} 
.newsHeader{
	font-size:18px;
	color: #6495ED;
}
.newsDesc{
	font-size:12px;
}
</style>
<!-- </head>
<body> -->
	<s:action name="news" executeResult="false" var="list"/>
	<marquee class="newsTicker" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
		<ul>
			<s:iterator value="#list.newsList" >
				<li class="well well-sm">
					<div class="newsHeader"><s:property value="headLine"/></div>
					<div class="newsDesc"><s:property value="detailedNews"/></div>
				</li>
			</s:iterator>	
		</ul>
	</marquee>
	<div class="seperator"></div>
	<marquee class="newsTicker" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
		<ul>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
			<li class="well well-sm"><div class="newsHeader">news header</div></li>
		</ul>
	</marquee>
<!-- </body>
</html> -->