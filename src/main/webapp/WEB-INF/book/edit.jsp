<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ page isErrorPage="true" %>
             
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css"/>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Edit</title>
</head>
<body>
	<h1>Edit Book</h1>
	<a href="/">back to the shelves</a>
	<form:form action="/books/${book.id}" method="patch" modelAttribute="book">
	<form:hidden path="poster"/>
    <div class="form-group">
        <label>Title</label>
        <form:input path="title" class="form-control"/>
        <form:errors path="title" class="text-danger"/>
    </div>
    <div class="form-group">
        <label>Author</label>
        <form:input path="author" class="form-control"/>
        <form:errors path="author" class="text-danger"/>
    </div>
    <div class="form-group">
        <label>My thoughts</label>
        <form:input path="thoughts" class="form-control"/>
        <form:errors path="thoughts" class="text-danger"/>
    </div>
    <input type="submit" value="Edit Book" class="btn btn-primary"/>
</form:form>
	

</body>
</html>