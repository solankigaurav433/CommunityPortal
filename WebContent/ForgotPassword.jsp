<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib uri="/struts-tags" prefix="s"%>
     <%@ include file="header.jsp" %> 
   
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 
<title>Forgot Password</title>
<style>
 body {
     background-position: center;
     background-color: #eee;
     background-repeat: no-repeat;
     background-size: cover;
     color: #505050;
     font-family: "Rubik", Helvetica, Arial, sans-serif;
     font-size: 14px;
     font-weight: normal;
     line-height: 1.5;
     text-transform: none
 }
 .forgot {
     background-color: #fff;
     padding: 12px;
     border: 1px solid #dfdfdf
 }

 .padding-bottom-3x {
     padding-bottom: 72px !important
 }

 .card-footer {
     background-color: #fff
 }

 .btn {
     font-size: 13px
 }

 .form-control:focus {
     color: #495057;
     background-color: #fff;
     border-color: #76b7e9;
     outline: 0;
     box-shadow: 0 0 0 0px #28a745
 }
 </style>
</head>
<body>
<div class="container padding-bottom-3x mb-2 mt-5">
	    <div class="row justify-content-center">
	        <div class="col-lg-8 col-md-10">
	            <div class="forgot">
	                <h2>Forgot your password?</h2>
	                <p>Change your password in three easy steps. This will help you to secure your password!</p>
	                <ol class="list-unstyled">
	                    <li><span class="text-primary text-medium">1. </span>Enter your Registered Email address below.</li>
	                    <li><span class="text-primary text-medium">2. </span>Our system will send you a Password</li>
	                    <li><span class="text-primary text-medium">3. </span>Use the same to login to the portal</li>
	                </ol>	
	            </div>

<s:form action="emailer" method=" " class="card mt-4" name="frgt" theme="bootstrap" onSubmit="return myFunction()">
 <div class="card-body">
 <div class="form-group">
		<s:textfield cssClass="form-control" placeholder="The email address you used to register with ABC Pte Ltd" name="email" label="Enter your email address"></s:textfield>
		</div>
		   <div class="card-footer">
		<s:submit cssClass="btn btn-success" role="button" value="Submit"></s:submit> </div>
		</div>
	</s:form>
	</div>
	</div>
	</div>
	<script>
	function myFunction(){
		if (document.frgt.email.value == "")

		{
			alert("Please Enter Your Email Associated with this account ");
			return false;
		}
		
		
	}
	</script>
</body>
<%@ include file="footer.jsp" %> 
</html>