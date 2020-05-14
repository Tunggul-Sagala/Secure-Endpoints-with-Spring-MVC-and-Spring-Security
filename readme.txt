Secure endpoints based on employee role. Details of all endpoints are below:
	
	http://localhost:8080/security/login	===> Permit All
	http://localhost:8080/security/home   	===> ROLE_EMPLOYEE
	http://localhost:8080/security/systems	===> ROLE_ADMIN
	http://localhost:8080/security/leaders	===> ROLE_MANAGER
	http://localhost:8080/security/denied	===> ACCESS DENIED

Environtment :
	1. Spring Framework 5.2.5.RELEASE
	2. Spring Security 5.3.1.RELEASE
	3. Hibernate
	4. MySQL Server 5.5
	5. Tomcat 9
	
User 	: john
       	  susan
      	  mary

Password : fun123
	
