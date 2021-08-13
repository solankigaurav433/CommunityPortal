<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	   <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib prefix="s" uri="/struts-tags"%>
 <%@ include file="headerDashbrd.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<title>Search user</title>
<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 60%;
}

th {
	height: 30px;
}

.button-update {
	background-color: #008CBA;
	color: white;
}

.button-delete {
	background-color: red;
	color: white;
}
</style>
</head>
<body>
	<div style="margin-top: 40px;">
		<s:if test="noData==true">
			<table>
				<s:iterator value="beanList">
				<div class="container mt-3">

		<div class="media border p-3">
			<img src="image/profile icon.png" class="mr-3 mt-3 rounded-circle"
				style="width: 100px;  margin-top:30px;">
			<div class="media-body">
				<a href="ViewUserProfileAction?email=${email}" class="btn btn-info" style="margin-left: 870px; width:110px; height:50px;" role="button">View Profile</a>
		
				<h4 style="word-spacing: normal;"><s:property value="firstName"/> <s:property value="lastName"/></h4>
				<p><s:property value="%{profession}"/></p>
					
				<p>Country - <s:property value="%{country}"/><br>Lives in <s:property value="%{city}"/><br>Resident at <s:property value="%{address}" />
	
				</p>
			</div>
		</div>
	</div>
				</s:iterator>
			</table>
		</s:if>
		 <s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else> 

	</div>
</body>
<%@ include file="footer.jsp"%>
</html>