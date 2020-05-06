<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
	<title>Please Login</title>
	<style>
		.error {
			color:red;
		}
	</style>
</head>
<body>
	<h3>Please Login</h3>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST"> 
		<c:if test="${param.error !=null}">
			<i class="error">Invalid username/password. Try again.</i>
		</c:if>
		<c:if test="${param.logout !=null}">
			<i class="error">You have log out.</i>
		</c:if>
		<table>
			<tbody>
				<br>
				<tr>
					<td><label>Username</label></td>
					<td><input type="text" name="username"/>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" name="password"/>
				</tr>
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Login">
				</tr>
			</tbody>
		</table>
	</form:form>
</body>
</html>