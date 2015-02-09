<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
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
	<h2 align="center">Output Screen</h2>
	<s:if test="hasActionErrors()">
			<div class="alert alert-danger" role="alert">
			    <s:actionerror/>
			</div>
	</s:if>
	<s:if test="hasActionMessages()">
		 	    <div class="alert alert-success" role="alert">
			         <s:actionmessage/>
    			</div>
	</s:if>
	
	<div class="row">
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <div class="caption">
		        <h3>Enter Student ID:</h3>
		        <form action="outputAction" enctype="multipart/form-data" method="post">
   						 <p>
				           <input type="text" name="userID" class="form-control" placeholder="Student ID" autofocus>
				        </p>
				        <input type="submit" class="btn btn-default btn-primary" value="Submit"/>
   				</form>
		       </div>
		    </div>
		  </div>
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <div class="caption">
		      		<h2>Student Details</h2>
					<div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading" align="center">Marks</div>
					  <div class="panel-body">
					    <p>Detail list of subject marks</p>
					  </div>
					
					  <!-- List group -->
					  <ul class="list-group">
					  <s:iterator value="subList">
					  		  <li class="list-group-item"><b><s:property value="name"/></b>:&nbsp;&nbsp;<s:property value="marks"/></li>
					  </s:iterator>
					     <li class="list-group-item"><b>Total:&nbsp;</b><s:property value="total"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Percentage:</b>:<s:property value="percentage"/></li>
					     
					  </ul>
					</div>
		        	<div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading" align="center">Interest</div>
					 
					  <!-- List group -->
					  <ul class="list-group">
						  <s:iterator value="intList">
						  		   <li class="list-group-item"><s:property/></li>
					
						  </s:iterator>
					   </ul>
					</div>
		       </div>
		       
		    </div>
		  </div>
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		    <img src='image1Action?userId=<s:property value="userID"/>' />
		      <div class="caption">
		        <h3>Profile Picture</h3>
		        <P>Grade:&nbsp;<s:property value="grade"/></P>
		       </div>
		    </div>
		  </div>
	</div>
	
<br/><br/><br/>
</div>
</body>
</html>