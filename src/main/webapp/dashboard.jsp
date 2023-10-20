<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Cars</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="receita" items="${receitas}">
            <tr>
                <td></td>
                <td>${receita.name}</td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>