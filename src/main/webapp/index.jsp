<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Ihor Chikh">
    <!-- Bootstrap CSS -->
    <link href="bootstrap-5.0.1-dist/css/bootstrap.min.css" rel="stylesheet">

    <title>JSP - Hello World</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
<jsp:include page="tours.jsp"/>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="bootstrap-5.0.1-dist/js/bootstrap.bundle.js"></script>
</body>
</html>