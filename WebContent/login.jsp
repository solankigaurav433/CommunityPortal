<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
		<%@ taglib uri="/struts-tags" prefix="s"%>
	<%@ include file="header.jsp" %> 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<s:url value="/CSS/main.css" />" rel="stylesheet">
<link href="<s:url value="/CSS/BreadCrumb.css" />" rel="stylesheet">
<title>Login</title>
<style>
.log {
margin-left:3px;
margin-top: 50px;
font-family: 'Times New Roman', Times, serif;
	color: Black;
	font-weight: bolder;
}
.email{
width: 420px;
	padding: 5px;
	border: 2px inset;
	border-radius: 2px;
	box-sizing: border-box;
	margin-top: 20px;
	margin-bottom: 14px;
	resize: vertical;
}
.sub {
margin-left:50%;
margin-top:20px;
}
.Link{
margin-bottom: 50px;
}

h2.h {
font-family:'Times New Roman';
font-size: 35px;
text-align: center;
color:red;
}

</style>
</head>
<body>
<ul class="breadcrumb">
  <li><a href="index.jsp">Home</a></li>
  <li>Login</li>
</ul>

 <div class="wrapper fadeInDown zero-raduis">

  	  <div id="formContent">
  	   <s:a cssClass="underlineHover" href='AdminLogin.jsp' style="margin-right:70%;">ADMIN LOGIN ?</s:a>
  	    <div class="fadeIn first">
  	      <h2 class="my-5">Sign In</h2>
  	    </div>
 <s:form action="login" method="post" name="logi" class="log" theme="bootstrap" onSubmit="return myFunction()">
		<s:textfield cssClass="fadeIn second zero-raduis" name="email" placeholder="Email"></s:textfield>
		<s:password cssClass="fadeIn third zero-raduis" name="password" placeholder="Password"></s:password>
		<s:submit cssClass="fadeIn fourth zero-raduis" value="Login"></s:submit> 
		
	</s:form>
	
	

<s:a  cssClass="underlineHover" href='ForgotPassword.jsp'>Forgotten password?</s:a>
<p style="text-align: center;">Do you have an account?<s:a  href='Register.jsp'>Register Here</s:a></p>

</div>
</div>
<s:if test="user!=null">
<span style="color: red;"><s:property value="msg" /></span>
</s:if>
<s:else>
<span style="color: red;"><s:property value="msg" /></span>
</s:else>
	<script>
				function myFunction() {
					if (document.logi.email.value == "")

					{
						alert("Please Enter Your Email ");
						return false;
					}
					var a = document.logi.password.value;
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
