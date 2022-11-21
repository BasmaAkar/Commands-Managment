<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Font Icon -->
<!-- Main css -->
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<title>Gestion de commandes </title>

</head>
<body>
<div class="main">
	<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
					
					</div>
<div class="signin-form">
						<h2 class="form-title">Sign up</h2>
	<form method="post" action="Auth "class="register-form"
							id="login-form">
	<div class="form-group">
								<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
								<c:if test="${ !empty errorVide }">
						<c:out value="${ errorVide }"></c:out>
					</c:if>
								 <input
									type="text" name="email" id="username"
									placeholder="Your email"   value="<c:out value="${ user.getEmailUtil() }"/>" >
							</div>

					<div class="form-group">
						<c:if test="${ !empty error }">
						<c:out value="${ error }"></c:out>
					</c:if>
								<label for="password"><i class="zmdi zmdi-lock"></i></label>
								 <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
					
					<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
						
						<a  	class="form-submit"  href="createAccount.jsp" style="font-size: 15px;">Register</a>
					</div>

				</form>
			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>