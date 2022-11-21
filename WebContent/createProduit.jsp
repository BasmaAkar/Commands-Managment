<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

  <!-- font awesome cdn link  -->
  <link rel="stylesheet" href="css/FORM.CSS">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<title>Create Product</title>
</head>
<body>
<header  >
    <div class="user">
        <img src="images/t.png" alt="">
         <a ><p class="post"> Your Market <span>  is Near to You  </span></p></a>
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
  <h1>New Product</h1>
	<form action="CreateServlet" method="post" >

     <div class="inputbox">
      <input  class="input100"  type="text"   name="nomProd"    required minlength="2" maxlength="45">
      <span>Name</span>
    </div>

	<div class="inputbox">
      <input  class="input100"   type="number" name="prixProd"  required minlength="2" maxlength="45">
      <span>Price </span>
    </div>
		
		<div class="inputbox">
	        <button><a type="submit"   name="save" value="Submit" class="button">Submit</a></button> 
	         	     <a   type="submit"    href="ShowListServlet?act=2"   class="button" >Cancel</a>
	         	    </div>
	         	  
					
			</form>
		</div>

	<%
		session.setAttribute("page", "prod");
	%>
</body>
</html>