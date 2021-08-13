<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ include file="headerDashbrd.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Update</title>
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
	border: 1px solid #dfdfdf;
}

.card-footer {
	background-color: #fff text-align: center;
}

.btn {
	font-size: 13px;
	text-align: center;
}

h2 {
	text-align: center;
}

.col-lg-12 {
	text-align: right;
	margin-top: 10px;
}

.form-group {
	font-weight: bold;
	font-family: inherit;
	font-size: 18px;
}
</style>
</head>
<body>

	<div class="col-lg-12">
		<a href="LoginAction?email=${email}">
			<button class="btn btn-outline-info">Home</button>
		</a> <a href="ProfileAction?email=${email}">
			<button class="btn btn-outline-info">My Profile</button>
		</a>
	</div>


	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<s:form action="updatedetails" method="post" theme="bootstrap">
						<div class="card-body">
							<div class="form-group">
							
							

								<s:textfield cssClass="form-control" name="firstName"
									label="First Name" value="%{firstName}"></s:textfield>


								<s:textfield cssClass="form-control" name="lastName"
									label="Last Name" value="%{lastName}"></s:textfield>


								<s:textfield cssClass="form-control" name="address"
									label="Address" value="%{address}"></s:textfield>

								<s:textfield cssClass="form-control" name="number"
									label="Phone Number" value="%{number}"></s:textfield>

								<s:textfield cssClass="form-control" name="city" label="City"
									value="%{city}"></s:textfield>

								<s:select cssClass="form-control input-sm"
									list="{'Select','Afghanistan','Algeria','Argentina','Australia','Belgium','Canada','Colombia','France','Germany','India','Italy','Singapore','Other'}"
									name="country" label="Country" placeholder="Country"
									value="%{country}"></s:select>

								<s:textfield cssClass="form-control" name="profession"
									label="Profession" value="%{profession}"></s:textfield>

								<s:textfield cssClass="form-control" name="email" label="Email"
									value="%{email}"></s:textfield>
									<small style="color:red;">You cannot change your email.</small>
									
								<s:select cssClass="form-control"
									list="{'Select','B.SC','M.SC','B.E','M.E','P.HD','Other'}"
									name="qualification" label="Qualification"
									value="%{qualification}"></s:select>
							</div>
							<div class="card-footer">

								<s:submit name="submitType" cssClass="btn btn-primary"
									role="button" value="Update" type="submit"></s:submit>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>

	<s:if test="ctr>0">
		<span style="color: red;"><s:property value="msg" /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value="msg" /></span>
	</s:else>

</body>
</html>
<%@ include file="footer.jsp"%>