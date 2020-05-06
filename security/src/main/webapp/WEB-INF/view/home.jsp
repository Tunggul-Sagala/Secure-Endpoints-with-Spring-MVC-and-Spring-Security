<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
</head>
<body>
	<h3>Welcome to Homepage</h3>
	<hr>
	
	<p>
		User: <security:authentication property="principal.username"/>
		<br>
		Role: <security:authentication property="principal.authorities"/>
	</p>
	<hr>
	
	<p>
		Welcome to Employees Homepage. 
		<br>
		Reminder : Employee Gala Dinner will be held on next Summer.
	</p>
	
	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leaders Homepage</a>
		</p>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">Admins Homepage</a>
		</p>
	</security:authorize>
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout">
	</form:form>
</body>
</html>