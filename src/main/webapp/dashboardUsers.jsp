<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Receitas</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>
                    <form action='/delete-receita' method="post">
                        <input type="hidden" id="id" name="id" value="${user.id}">
                        <button type="submit">Delete</button>
                        <span> | </span>
                        <a href="editCadastro.jsp?id=${user.id}&name=${user.name}">Update</a>
                    </form>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>