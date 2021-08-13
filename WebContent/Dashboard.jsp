<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
	<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ include file="headerDashbrd.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<link href="<s:url value="/CSS/Dashboard.css" />" rel="stylesheet">
	
	<style>
	.col-lg-12 {
	text-align: right;
	margin-top: 10px;
	}
	h1.A{
	font-size: 60px;
	font-family: fantasy;
	}
	.btn-success {
	margin-left:68%;
	margin-top: -63px;
	height: 48px;
	}
	
	</style>
</head>
<body>
<body>
<div class="col-lg-12"> <a href="Dashboard.jsp" class="btn btn-outline-info disabled">Home</a>
<a href="ProfileAction?email=${user.email}">
								<button class="btn btn-outline-info">My Profile</button>
						</a> 
	
 <div class="row mb-3">

		<div class="col-lg-8 mx-auto">
		

			<s:form action="Search" method="post" theme="bootstrap" name="searchForm" onSubmit="return myFunction()">

				 
					<div class="input-group">
						<h4
							style="margin-top: 9px; margin-left: 3px; font-family: inherit; letter-spacing:5px;">FIND </h4>
							<s:textfield placeholder="Search by Firstname, Lastname, city or country"
							 style="width:200%;" 
							cssClass="form-control form-control-lg form-control-borderless" name="search"/>	
							
					<s:submit cssClass="btn btn-lg btn-success"
  role= "button" value="search"></s:submit>
					</div>

				
			</s:form>
		</div>
</div></div>

 <div class="hero-image">
  <div class="hero-text">
    <h1 class="A">ABC Jobs Welcomes You</h1>
    <h3 style="word-spacing:normal;"><s:property value="%{ user.firstName}"/> <s:property value="user.lastName"/></h3>
    
   <a href="ProfileAction?email=${user.email}">
								<button class="btn btn-primary">My Profile</button>
						</a> 
  </div>
</div> 
<div class="container col-md-12" style="margin-top:10px; margin-bottom:10px;">
<div class="media border p-3">
<img class="mr-3 mt-3 rounded-circle" style="width:60px;" src="image/avtar.png" alt="Card image">
  <div class="media-body">
   <h4  style="word-spacing:normal;"><s:property value="%{user.firstName}"/> <s:property value="%{user.lastName}"/></h4>
   Signed In at <p id="demo"></p> 
   <p>Country - <s:property value="%{user.country}"/><br>Lives in <s:property value="%{user.city}"/><br>Resident at <s:property value="%{user.address}" /></p>
   </div>
   </div>
   </div>
   
   

<script>

	var d = new Date();
	d.setFullYear(2020);
	document.getElementById("demo").innerHTML = d;
</script>
<script>
	function myFunction() {
		if (document.searchForm.search.value == "")

		{
			alert("Search field cannot be empty"+" "+"please search by Firstname, Lastname, city or country");
			
			
			return false;
		}
		else {

		}
	}
</script>
	</body>
	</html>
<%@ include file="footer.jsp"%>	