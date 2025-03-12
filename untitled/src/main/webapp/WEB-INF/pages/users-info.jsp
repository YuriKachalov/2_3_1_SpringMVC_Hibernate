<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>
<h2>User info</h2>

<form:form action="saveUser" modelAttribute="users">

    <form:hidden path="id"/>

    <br><br>
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="lastName"/>
    <br><br>
    Age <form:input path="age"/>
    <br><br>
    <input type="submit" value="OK">


</form:form>


</body>


</html>