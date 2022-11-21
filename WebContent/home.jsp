<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <link rel="stylesheet" href="css/Home.css">
<title>Home</title>
</head>
<body>
<img style=" margin-top: 120px;
    margin-left: 280px; "src="images/market.png">
<header  >
    <div class="user">
        <img src="images/t.png" alt="">
        <h3 class="name"> Hello </h3>
         <a ><p class="post"> Your<span> Market is Near To you   </span></p></a>
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

</body>
</html>