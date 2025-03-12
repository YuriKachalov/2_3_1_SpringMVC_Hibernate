<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<h2>Users</h2>
<table>
    <tr>

        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="users" items="${userList}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="userId" value="${users.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="userId" value="${users.id}"/>
        </c:url>

        <tr>

            <td>${users.name}</td>
            <td>${users.lastName}</td>
            <td>${users.age}</td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '${updateButton}'">
            </td>

            <td>
                <input type="button" value="Delete"
                onclick="window.location.href = '${deleteButton}'">
            </td>

        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add"
       onclick="window.location.href = 'addNewUser'"/>

</body>
</html>
