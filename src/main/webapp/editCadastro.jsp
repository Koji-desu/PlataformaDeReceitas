<html>
<body>
<h2>Edit user</h2>

<form action="/edit-user" method="post">

    <label>User Name</label>
    <input type="text" name="nome" id="nome" value="${param.name}">
    <input type="hidden" id="id" name="id" value="${param.id}">

    <button type="submit">Save</button>

</form>

</body>
</html>