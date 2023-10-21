<html>
<body>
<h2>Create Receita</h2>

<form action="/create-receita" method="post">

    <label>Receita Name</label>
    <input type="text" name="receita-name" id="receita-name" value="${param.name}">
    <input type="hidden" id="id" name="id" value="${param.id}">

    <button type="submit">Save</button>

</form>

</body>
</html>