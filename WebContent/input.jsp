<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
	<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css"/>
	<script type="text/javascript">
    $(document).ready(function() {
        $('#interest').multiselect({
        	buttonWidth: '450px',
        		dropRight: true
        });
    });
    $(document).ready(function() {
        $('#subject').multiselect({
        	buttonWidth: '450px',
        		dropRight: true
        });
    });
	</script>

<title>Input Screen</title>
<sb:head/>
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
    			</div>
				<td ><h2 class="text-primary"><b>Lab Test 1:</b>
				Student Info Page</h2></td>
			</tr>
			<tr>
				<td><h4><b>Student Name:</b>Anish Ratnawat</h4></td>
				<td><h4><b>Roll No:</b>MT2014005</h4></td>
			</tr>
		</table>
	</div>
	<div>		<h1 align="center">Input Screen</h1>
	

	<s:if test="hasActionErrors()">
			<div class="alert alert-danger" role="alert">
			    <s:actionerror/>
			</div>
	</s:if>
	<s:if test="hasActionMessages()">
		 	    <div class="alert alert-success" role="alert">
			         <s:actionmessage/>
	</s:if>
	<form action="inputAction" enctype="multipart/form-data" method="post">
    	<div class="row">
       		
	        <div class="col-sm-5 col-md-3 col-lg-5">
	           Student Name:<input type="text" name="stuName" class="form-control" placeholder="Student Name" autofocus>
	        </div>
	        <div class="col-md-3 col-lg-5">
	           Student ID:<input type="text" name="stuID" class="form-control" placeholder="Student ID" autofocus>
	        </div>
   		 </div><br>
   		<div class="row">
       	    <div class="col-sm-5 col-md-3 col-lg-5">
	           Interest:<br><select name="interest" id="interest" multiple="multiple">
	           				<option value="Cricket" selected="selected">Cricket</option>
	           				<option value="Reading">Reading</option>
	           				<option value="Games">Games</option>
	           			</select>
	        </div>
			 <div class="col-md-3 col-lg-5">
	           Picture:<s:file name="pic" label="Picture"></s:file>
	        </div>
    </div><br>
    <div class="row">
       	    <div class="col-sm-5 col-md-3 col-lg-5">
	           Subjects:<br><select name="subject" id="subject" multiple="multiple">
	           				<option value="physics" selected="selected">Physics</option>
	           				<option value="chemistry">Chemistry</option>
	           				<option value="maths">Maths</option>
	           			</select>
	        </div>
			 <div class="col-md-3 col-lg-5">
	           Marks(Enter Comma(,) seperated(if multiple)):<input type="text" name="mark" class="form-control" placeholder="Enter Marks" autofocus>
	        </div>
    </div>
    <br><div align="center"> <input type="submit" class="btn btn-default btn-primary" value="Submit"/></div>
   
</form>    

    </div>
	<br><br><br>
	</div>
	
</body>
</html>