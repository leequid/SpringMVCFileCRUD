<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<ol>
		<c:forEach items="${restaurantList}" var="i">
			
			<li>${i.name}${i.address}</li> 
			<form method="post" action="deleteRestaurant.do">
			<input type="hidden" name="restaurant" value="${i.name}"><input type="submit" value="delete" name="Address"/>	
			</form>
		
		</c:forEach>
	</ol>

<a href="addRestaurant.jsp">Add Restaurant</a><br>
<a href="viewRestaurant.do">View your List!</a><br>
</body>
</html>