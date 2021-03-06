<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head >
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<header class="masthead" style="height:100vh; padding:0;">
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
	
		<form action="SearchAvailableCarsServlet" method="get">
		<fieldset style="margin-left: auto!important; margin-right:auto!important; width: 500px">
            <legend class="text-white-50"> Search Criterion for finding available car </legend>
			<table>
				<tr>
						<td class="text-white-50">
							Pickup Date
						</td>
						<td>
							<input type="text" class="form-control" name="pickupdate" placeholder="YYYY/MM/DD">
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							Pick Up Time
						</td>
						<td>
							<input type="text" class="form-control" name="pickuptime" placeholder="HH:MM">
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							End Date
						</td>
						<td>
							<input type="text" class="form-control" name="dropoffdate" placeholder="YYYY/MM/DD">
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							End Time
						</td>
						<td>
							<input type="text" class="form-control" name="dropofftime" placeholder="HH:MM">
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							Capacity
						</td>
						<td>
							<input type="text" class="form-control" name="Capacity">
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							<p><input type="checkbox" name="gps" value="1">GPS</p>
						</td>
						<td class="text-white-50">
							<p><input type="checkbox" name="onstar" value="2">OnStar</p>
						</td>
					</tr>
					<tr>
						<td class="text-white-50">
							<p><input type="checkbox" name="siriusxm" value="3">SiriusXM</p>
						</td>
						<td class="text-white-50">
							<p><input type="checkbox" name="clubmember" value="4">Arlington auto club member</p>
						</td>
					</tr>
					
				</table>
				<input style="margin-left:auto!important; margin-right:auto!important; margin-top:10px;" class="btn" type="submit" value="Search Cars" />
			</fieldset>
		</form>
		<form action="userhome.jsp" method="post">
				<button type="submit" class="btn btn-link text-white-50">Go to Homepage!!</button>
		</form>
	</div>
	</div>
	</header>
</body>
</html>