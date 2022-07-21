<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotels</title>
</head>
<body>

<h1>Hotel Search</h1>

<%--  <table>
		<thead>
			<tr>
				<th>Name</th>
				<th>City</th>
				<th>Price Per Night</th>
			</tr>
		</thead>
			<tbody>
			<c:forEach var="hotel" items="${hotels}">
				<tr>
					<td>${hotel.hotelName}</td>
					<td>${hotel.city}</td>
					<td>${hotel.pricePerNight}</td>					
										
				</tr>
			</c:forEach>
		</tbody>
	
		
</table>  --%>

<form action="/searchbycity" method="post">
	City: 
		<select name = "city">
			<option value="Detroit">Detroit</option>
  			<option value="Chicago">Chicago</option>
  			<option value="Los Angeles">Los Angeles</option>
  			<option value="Miami">Miami</option>
  			<option value="San Francisco">San Francisco</option>
		</select><br>
		
	<input type="submit"/>
</form>

</body>
</html>