<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center">Welcome to Product App</h1>
				<table class="table">
					<thead >
						<tr class="table-dark">
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					   <c:forEach items="${product }" var="p">
					     <tr>
							<th scope="row">TECHONLY${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="fw-bold">&#8377;${p.price }</td>
							<td>
							   <a href="delete/${p.id }"><i class="fa-solid fa-trash-can text-danger" ></i></a>
							   <a href="update/${p.id }"><i class="fa-solid fa-pen-nib text-primary"></i></a>
							</td>
						  </tr>
					   
					   </c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
				      <a href="addProduct" class="btn btn-outline-success">Add Product</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>