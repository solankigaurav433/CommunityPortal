<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<style>





</style>
</head>
<body>
	<div style="margin-top: ;">
		<s:if test="noData==true">
			
			<table class="table table-hover">
				<thead>
					<tr style="background-color: #E0E0E1;">
						<th scope="col">Id</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Gender</th>
						<th scope="col">Address</th>
						<th scope="col">Number</th>
						<th scope="col">City</th>
						<th scope="col">Country</th>
						<th scope="col">Profession</th>
						<th scope="col">Email</th>
						<th scope="col">Password</th>
						<th scope="col">Qualification</th>
						<th><a href="AdminDashboard.jsp">
								<button class="btn btn-dark">Home</button>
						</a> </th>
					</tr>
				</thead>
				<s:iterator value="beanList">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="firstName" /></td>
						<td><s:property value="lastName" /></td>
						<td><s:property value="gender" /></td>
						<td><s:property value="address" /></td>
						<td><s:property value="number" /></td>
						<td><s:property value="city" /></td>
						<td><s:property value="country" /></td>
						<td><s:property value="profession" /></td>
						<td><s:property value="email" /></td>
						<td><s:property value="password" /></td>
						<td><s:property value="qualification" /></td>
						<td>
						<a href="deleterecord.action?email=<s:property value="email"/>">
								<button class="btn btn-danger">Delete</button>
						</a></td>
				</tr>
				</s:iterator>
			</table>
			
		</s:if>
		 <s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else> 

	</div>
</body>
</html>