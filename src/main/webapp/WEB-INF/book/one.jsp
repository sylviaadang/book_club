<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Book</title>
</head>
<body>
<h1><c:out value="${book.title}"/></h1>
<h3><c:out value="${book.poster.userName}"/> read <c:out value="${book.title}"/>by <c:out value="${book.author}"/></h3>
<p>Here are <c:out value="${book.poster.userName}"/>'s thoughts:</p>
<hr>
<p><c:out value="${book.thoughts}"/></p>
<hr>
<a href="/books/edit/m/${book.id}">Edit</a>
<form action="/books/${book.id}" method="post">
	<input type="hidden" value="delete" name="_method"/>
	<input type="submit" value="Delete" class="btn btn-danger"/>
</form>
</body>
</html>