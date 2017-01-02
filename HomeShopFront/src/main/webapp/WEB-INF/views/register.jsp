<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
<style>
body {
    background-color: steelblue;
}

</style>
<%@ include file="/WEB-INF/views/Menu.jsp" %>
<script type="text/javascript">
function formRegister() {
	// Make quick references to our fields
	var user_name = document.getElementById('user_name');
	var gender = document.getElementById('gender');
	var email_id = document.getElementById('email_id');
	var password = document.getElementById('password');
	var address = document.getElementById('address');
	var mn = document.getElementById('mn');
	
	// Check each input in the order that it appears in the form!
	if (notEmpty(user_name, "Username Should not be empty")) {
    if (isAlphabet(user_name, "Please enter only letters for Fsername")){
    if (notEmpty(gender,
		"gender Should not be empty")) {
	if (notEmpty(email_id,
	   "email_id Should not be empty")) {
	if (isAlphanumeric(password,
		"Numbers and Letters Only for Passwords")) {
	
	if (notEmpty(address,
		"Address Should not be empty")) {
		return true;
		if (notEmpty(mn,
		"PhoneNumber Should not be empty")) {
	if (isNumeric(mn,
		"Please enter only number for PhoneNumber")) {
	}	
	}
	}
	}	
	}
	}
	}
	}
	return false;
}	
	
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}

	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}

	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}

	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}

	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
		
	}

</script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">Register</div>
                <div class="panel-body">
                    <form role="form" method="post" action="newUserAccount" onsubmit="return formRegister()" >
                    
                        <label for="username">UserName</label>
                        <input type="text" id="user_name" class="form-control" name="user_name" placeholder="Example: John">
              	          
              	         <label for="username">Gender</label>
                        <input type="text" id="gender" class="form-control" name="gender" placeholder="Example: John">
              	            
              	          
                        <label for="emailaddress" class="m-t-10">EmailAddress</label>
                        <input type="text" id="email_id" class="form-control" name="email_id" placeholder="Example: john.smith@gmail.com">
                        
                        <label for="password" class="m-t-10">Password</label>
                        <input type="password" id="password" class="form-control" name="password" placeholder="">
                        
                        <label for="address" class="m-t-10">Address</label>
                        <input type="address" id="address" class="form-control" name="address" placeholder="Your Address">
                        
                        <label for="mobilenumber" class="m-t-10">MobileNumber</label>
                        <input type="mobilenumber" id="mn" class="form-control" name="mn" placeholder="">
                        
                        <center><input type="submit" class="btn btn-primary m-t-10" id="submitbtn" name="submit" value="Submit"></center>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>  