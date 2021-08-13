<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    
    <%@ include file="headerDashbrd.jsp" %> 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	.col-lg-12 {
	text-align: right;
	margin-top: 10px;
	}
	
	</style>
</head>
<body>

 <div class="col-lg-12">
  <a href="LoginAction?email=${user.email}">
								<button class="btn btn-outline-info">Home</button>
						</a> 
	
 <a href="Profile.jsp" class="btn btn-outline-info disabled">My Profile</a></div>
<div class="container mt-3">

		<div class="media border p-3">
		
			<img src="image/profile icon.png" class="mr-3 mt-3 rounded-circle"
				style="width: 100px;  margin-top:30px;">
			<div class="media-body">
									<div class="col-lg-12">
				 <a href="updatedetails?submitType=updatedata&email=${user.email}">
								<button class="btn btn-outline-info">Update</button>
						</a></div> 	
				<h4 style="word-spacing: normal;"><s:property value="%{user.firstName}"/> <s:property value="%{user.lastName}"/></h4>
				<p>
					<s:property value="profession"/>
				</p>
				<p>Country - <s:property value="%{user.country}"/><br>Lives in <s:property value="%{user.city}"/><br>Resident at <s:property value="%{user.address}" />
				</p>
			</div>
		</div>
		
	</div>
	<div class="container mt-3" style="margin-bottom: 10px;">

		<div class="media border p-3">
			<img src="image/Education icon.png" class="mr-3 mt-3 rounded-circle"
				style="width: 100px;">
			<div class="media-body" style="margin-top: 15px;">

				<h5>Qualification</h5>
				<p>
					<s:property value="%{user.qualification}"/><br>
					
				</p>
				<hr>
				<h5>Profession</h5>
				<p>
					<s:property value="%{user.profession}"/><br>
					
				</p>
				<hr>
				<h5>Gender</h5>
				<p>	<s:property value="%{user.gender}"/>	</p>
				<hr>
				<h5>Contact</h5>
				<p>	<s:property value="%{user.number}"/>	</p>
					<hr>
				<h5>Email</h5>
				<p>	<s:property value="%{user.email}"/>	</p>
			
				
			</div>
		</div>
	</div>
	
</body>
</html>
<%@ include file="footer.jsp" %> 
	