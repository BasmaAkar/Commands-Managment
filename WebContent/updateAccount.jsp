<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"  href="css/FORM.CSS">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<header  >
    <div class="user">
        <img src="images/t.png" alt="">
        <h3 class="name"> Hello </h3>
         <a ><p class="post"> Your<span> Market is Near  </span></p></a>
    </div>
    <nav class="navbar">
    
        <ul>
            <li><a href = "home.jsp">Home</a></li>
            <li><a  href="updateAccount.jsp" >Account</a></li>
            <li><a  href="ShowListServlet?act=1">Commands</a></li>
            <li><a href="ShowListServlet?act=2">Products</a></li>
            	<c:if test="${ sessionScope.user.getTypeUtil() == 1 }">
				    <li><a  href="ShowListServlet?act=3">Users</a></li>
				</c:if>
              <li><a href="Auth?act=0">Logout</a></li>
         
       
        </ul>
    </nav>
</header>
<div class="center">
  <h1>Update Account </h1>
	<form action="UpdateServlet?id=${ user.getIdUtil() }" method="post" class="login100-form validate-form"> 
		<!-- Nom -->
				  <div class="inputbox">
						<input type="text" name="nomUtil" placeholder="Nom"
							value="<c:out value="${ user.getNomUtil() }"/>">
					</div>
					<!-- E-mail -->
					  <div class="inputbox">
						<input  type="text" name="emailUtil"
							placeholder="Email"
							value="<c:out value="${ user.getEmailUtil() }"/>"> 
					</div>
					<!-- Adresse -->
				  <div class="inputbox">
						<input class="input100" type="text" name="adresseUtil"
							placeholder="Adresse"
							value="<c:out value="${ user.getAdresseUtil() }"/>">
					</div>
					<!-- Password -->
					  <div class="inputbox">
						<input type="password" name="passwordUtil"
							placeholder="Password"> 
			</div>
		  <div class="inputbox">
		  		<input type="submit" name="update" value="Submit " class="button"> 
					
		</div>
			
				</form>
			</div>
		
	<%
		session.setAttribute("page", "util");
	%>
</body>
</html>