<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>LAB Test</title>
</head>
<body>
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Student Info</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home.jsp">Home</a></li>
        <li><a href="input.jsp">Insert Record</a></li>
        <li><a href="output.jsp">Result</a></li> 
        <li><a href="quit.jsp">Quit</a></li> 
      </ul>
    </div>
  </div>
</nav>
<div class="container">
	<div class="jumbotron">
		<table align="center" width="70%">
			<tr>
				<td ><h2 class="text-primary"><b>Lab Test 1:</b>
				Student Info Page</h2></td>
			</tr>
			<tr>
				<td><h4><b>Student Name:</b>Anish Ratnawat</h4></td>
				<td><h4><b>Roll No:</b>MT2014005</h4></td>
			</tr>
		</table>
	</div>
	<div align="center">
	<h1>Choose one of the following services</h1>
		<form role="form" action="NewTest" >
			<div class="radio">
				<label><input type="radio" name="choice" value="input">Input</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="choice" value="output">Output</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="choice" value="quit">Quit</label>
			</div>
			
			<input type="submit" class="btn btn-default btn-primary" value="Submit"/>
		</form>
	</div>
</div>
</body>
</html>