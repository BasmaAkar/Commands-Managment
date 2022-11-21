<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
  <!-- font awesome cdn link  -->
  <link rel="stylesheet" href="css/Table.css">
    
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">


<title>Users</title>
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

  <div class="ani">
  <h1>Managments of Users<i class="fa-solid fa-bell fa-shake"></i><div class="spinner-border text-info" role="status">
  <span class="visually-hidden">Loading...</span>
</div></h1>
 </div>
 </br>
 </br>
  </br>
 </br>
     <div class="cont">
    <table class="table table-bordered  ">
                <thead >
                    <tr class="table-success">

						<th scope="col">Nom</th>
						<th scope="col">Adresse</th>
						<th scope="col">E-mail</th>
						<th scope="col">Action </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ listUtil }" var="util">
						<tr>
							<th scope="row">${ util.getIdUtil() }</th>
						
							<td>${ util.getAdresseUtil() }</td>
							<td>${ util.getEmailUtil() }</td>
							<td><a href="DeleteServlet?id=${ util.getIdUtil() }">
										   <i class="fa-solid fa-trash"></i>  </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		
	</div>
	<%
		session.setAttribute("page", "util");
	%>
</body>
</html>