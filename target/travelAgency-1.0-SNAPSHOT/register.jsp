<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Ihor Chikh">
    <title>Register user</title>
    <link href="bootstrap-5.0.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles/register.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-register">
    <form action="<%= request.getContextPath() %>/register" method="post">
        <img class="mb-4" src="img/brandLogo.svg" alt="" width="100" height="100">
        <h1 class="h3 mb-3 fw-normal">Please Register</h1>

        <div class="form-floating">
            <input type="text" name="firstName" class="form-control" id="floatingFirstName" placeholder="First Name">
            <label for="floatingFirstName">First Name</label>
        </div>
        <div class="form-floating">
            <input type="text" name="lastName" class="form-control" id="floatingLastName" placeholder="Last Name">
            <label for="floatingLastName">Last Name</label>
        </div>
        <div class="form-floating">
            <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="name@example.com">
            <label for="floatingEmail">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
</main>
</body>
</html>
