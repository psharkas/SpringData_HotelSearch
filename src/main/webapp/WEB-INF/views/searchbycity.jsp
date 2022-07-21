<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Hotels in</h1>
 <table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Price Per Night</th>
			</tr>
		</thead>
			<tbody>
			<c:forEach var="hotel" items="${hotels}">
				<tr>
					<td>${hotel.hotelName}</td>
					<td>${hotel.pricePerNight}</td>					
										
				</tr>
			</c:forEach>
		</tbody>
	
		
</table> 

<a href = "/">Do another search</a>
</body>
</html> 