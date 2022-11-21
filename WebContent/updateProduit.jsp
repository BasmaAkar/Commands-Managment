<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link th:href="@{/FORM.CSS}" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet"> 
<head>
<link rel="stylesheet" href="css/FORM.CSS">
<meta charset="UTF-8">
<title>Update Product</title>
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
<h1>Update Product ${ prodToUpdate.getIdProd() }</h1>

	<form action="UpdateServlet?id=${ prodToUpdate.getIdProd() }" method="post" class="login100-form validate-form">
                     <div class="inputbox">
                       <input type="text"    name="nomProd" value="${ prodToUpdate.getNomProd() }"    required minlength="2" maxlength="45">
                    <span>Name</span>
                          </div>
	  
	                        <div class="inputbox">
                       <input type="number"    name="prixProd" value="${ prodToUpdate.getPrixProd() }"   required minlength="2" maxlength="45">
                    <span>Price</span>
                          </div>
			 
      	<button type="submit" name="save" class="button" > 	
                	<a type="submit" name="save" value="Submit" class="login100-form-btn">Submit</a>
      	</button>
        <a  href="ShowListServlet?act=2"  type="button" class="button " > Cancel</a>
			
		
			
			</form>
		</div>

	<%
		session.setAttribute("page", "prod");
	%>
</body>
</html>