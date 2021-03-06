<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./style.css">
	<title>Rental Manager Homepage</title>
</head>
<body class="masthead" style="height:100vh; padding-top:90px;">
 	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="LogoutServlet">Logout</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="rentalmanagerhome.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="CarCalenderServlet">Car Calendar</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="RequestRental.jsp">Check Car Availability</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="SearchRental.jsp">Search Rental</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="EditProfileServlet">Update Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="addcar.jsp">Add Car</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- <header class="masthead1" style="height:100vh; padding:0;">
  	<div class="container" style="height: 100% !important;
    display: flex;
    align-items: center;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;">
  		<div class="text-center" style="margin-left: auto!important; margin-right: auto!important;">
  		<h1>Go Mav Car Rental</h1>
  		<h2 class="text-white-50" style="font-style: italic;">- Go beyond the horizon</h2>
  		</div>
  		</div>
  	</header> -->
  	<div>
      <form class="text-white-50" action="CarCalenderServlet" method="POST">
		<p>From: <input type="text" name="fromcalender" placeholder="YYYY/MM/DD">&nbsp;&nbsp;&nbsp; 
			To: <input type="text" name="tocalender" placeholder="YYYY/MM/DD">&nbsp;&nbsp;&nbsp; 
			<input type="submit" value="search">
		</p>				
        
      </form>
  </div>
  <div>
    <table class="table table-striped bg-white">
      <thead>
        <tr>
          <th >
          RentalID
        </th>
        <th>
          User
        </th>
        <th>
          Start Date
        </th>
        <th>
          Start Time
        </th>
        <th>
          End Date
        </th>
        <th>
          End Time
        </th>
        <th>
          Car Name
        </th>
        </tr>
        
      </thead>
        <tbody>
	        <c:forEach var="var2" items='${requestScope["queryResults1"]}'>
	          <tr>
	          <td>${var2.reservation_id}</td>
		      <td>${var2.user_name}</td>
		      <td>${var2.start_date}</td>
		      <td>${var2.start_time}</td>
			  <td>${var2.end_date}</td>
		  	  <td>${var2.end_time}</td>
		      <td>${var2.car_name}</td>
	          </tr> 
	         </c:forEach>
        </tbody>
      
    </table>
  </div>
  	
</body>
</html>