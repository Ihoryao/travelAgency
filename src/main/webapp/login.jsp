<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Ihor Chikh">
    <title>Login user</title>
    <link href="bootstrap-5.0.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles/login.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-login">
    <form action="/login" method="post">
        <img class="mb-4" src="img/brandLogo.svg" alt="" width="100" height="100">
        <h1 class="h3 mb-3 fw-normal">Please Login</h1>

        <div class="form-floating">
            <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="name@example.com">
            <label for="floatingEmail">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
</main>
</body>
</html>