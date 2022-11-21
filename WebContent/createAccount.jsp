<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"  type="text/css" href="css/FORM.CSS">
<title>Insert title here</title>
</head>
<body>

			<div class="center">
			<h2>Create  Account</h2>
	<form action="Inscription" method="post" class="register-form">

	
	<!-- Nom -->
					 <div class="inputbox"
						data-validate="Valid name is required">
						<inputclass="input100"  type="text" name="nom" placeholder="Nom"
							value="<c:out value="${ user.getNomUtil() }"/>"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
					
					<!-- Email -->
					<c:if test="${ !empty error }">
						<c:out value="${ error }"></c:out>
					</c:if>
							 <div class="inputbox"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Email"
							value="<c:out value="${ user.getEmailUtil() }"/>"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
						<!-- Adresse -->
						 <div class="inputbox"
						data-validate="Valid adresse is required">
						<input class="input100" type="text" name="adresse"
							placeholder="Adresse"
							value="<c:out value="${ user.getAdresseUtil() }"/>"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-map" aria-hidden="true"></i>
						</span>
					</div>
					
						<!-- Password -->
							 <div class="inputbox"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					
						<!-- Bouton -->
					<div class="inputbox">
						<button type="submit" class="button" >Submit</button>
		
			
						<a href="index.jsp" class="button"> Login </a>
					</div>
					

</body>
</html>