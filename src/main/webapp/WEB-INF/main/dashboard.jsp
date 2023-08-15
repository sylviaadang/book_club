<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css"/>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body class="text-center">
	<h1>Welcome,  <c:out value="${loginUser.userName}"/></h1>
	<p>Book from everyone's shelves:</p>
	<a href="/users/logout">Log out</a>
	<a class="btn btn-primary" href="/books/create">Add to my shelf!</a>
	<div class="row justify-content-center mt-5">
		<table>
					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Author Name</th>
							<th>Posted By</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="eachBook" items="${allBooks}">
							<tr>
								<td> <c:out value="${eachBook.id}"/></td>
								<td> <a href="/books/showOne/${eachBook.id}"><c:out value="${eachBook.title}"/></a></td>
								<td> <c:out value="${eachBook.author}" /></td>
								<td> <c:out value="${eachBook.poster.userName}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
	</div>
	
</body>
</html>