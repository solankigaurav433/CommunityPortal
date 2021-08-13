<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ include file="header.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="<s:url value="/CSS/BreadCrumb.css" />" rel="stylesheet">

<title>Register here</title>

<style>
.justify-content-center{
	margin-top: 60px;
	margin-bottom: 25px;
	font-size: 17px;
	color:black;	
}
.card-header{
/* text-align: center; */
font-size: 23px;
font-weight: bold;
letter-spacing: 3px;
word-spacing: 17px;
background-color:teal;
color: teal;
}
</style>

</head>
<body>
<ul class="breadcrumb">
  <li><a href="index.jsp">Home</a></li>
  <li>Register</li>
</ul>

<div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">REGISTER BELOW</div>
                            <div class="card-body">
	<s:form action="register" method="post"  name="register" theme="bootstrap" onSubmit="return myFunction()">
		<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
		<s:textfield cssClass="cols-sm-2 control-label" name="firstName" label="First Name" placeholder="Firstname"></s:textfield>
		</div>
		</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="lastName" label="Last Name" placeholder="lastname"></s:textfield>
		</div>
		</div>
		</div>
			
		<s:radio label="Gender" name="gender" list="#{'1':'Male','2':'Female'}" value=" " />
		
		<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="address" label="Address" placeholder="Address"></s:textfield>
		</div>
			 <div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="city" label="City" placeholder="City"></s:textfield>
		</div>
		
		</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="number" label="Phone Number" placeholder="Number"></s:textfield>
		</div>
		</div>
		</div> 
		<div class="form-group">
		<s:select cssClass="form-control input-sm" list="{'Select','Afghanistan','Algeria','Argentina','Australia','Belgium','Canada','Colombia','France','Germany','India','Italy','Singapore','Other'}" name="country" label="Country" placeholder="Country"></s:select>
		</div>
			<div class="form-group">
			<s:select cssClass="form-control input-sm" list="{'Select','B.SC','M.SC','B.E','M.E','P.HD','Other'}"
			name="qualification" label="Qualification"></s:select>
			</div>
			<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="profession" label="Profession" placeholder="Profession"></s:textfield>
		</div>
			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
		<s:textfield cssClass="form-control input-sm" name="email" label="Email"  placeholder="Email"></s:textfield>
		</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
		<s:password cssClass="form-control input-sm" name="password" label="Password"  placeholder="Password"></s:password>
		</div>
		</div>
		</div>
		
		<s:submit cssClass="btn btn-info btn-block" role="button" value="Submit"></s:submit>  
	</s:form>
	</div>
	</div>
	</div>
</div>
</div>
<script>
	 		function myFunction() {
					
					if (document.register.firstName.value == "")

					{
						alert("Please Enter Your First Name ");
						return false;
					}
					if (document.register.lastName.value == "")

					{
						alert("Please Enter Your Last Name ");
						return false;
					}
					if ( ( document.register.gender[0].checked == false ) && (document.register.gender[1].checked == false) )
					{
					alert ( "Please choose your Gender: Male or Female" );
					return false;
					}

					if (document.register.address.value == "")

					{
						alert("Please Enter Your Address ");
						return false;
					}
					if (document.register.city.value == "")

					{
						alert("Please Enter Your City ");
						return false;
					}
					if (document.register.
							number.value == "")

					{
						alert("Please Enter Your Phone number ");
						return false;
					}
					
					if (document.register.country.selectedIndex == 0)

					{
						alert("Please Select Your Country ");
						return false;
					}

					if (document.register.qualification.selectedIndex == 0)

					{
						alert("Please Select Your Qualification ");
						return false;
					}
					if (document.register.profession.value == "")

					{
						alert("Please Enter Your Profession ");
						return false;
					}
					if (document.register.email.value == "")

					{
						alert("Please Enter Your Email ");
						return false;
					}
					
					var a = document.register.password.value;
					if (a == "")

					{
						alert("Please Enter Your Password ");
						return false;
					}
					else if ((a.length < 8) ||( a.length > 10))

					{
						alert("Password must be 8 to 10 characters");
						return false;
					}
				


					else {

					}

				}
			</script>

</body>
</html>
<%@ include file="footer.jsp" %>  



