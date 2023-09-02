<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">
		<div class="col-md-6 offset-md-3">
		
		<h1 class="text-center mb-3">Fill the product detail</h1>
			<form action="handle-product" method="post">
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Product Name</label> 
					<input type="text" class="form-control"
						id="name" aria-describedby="emailHelp" name="name" placeholder="Enter the product name here">
				</div>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Product Description</label> 
					<textarea rows="5" class="form-control" name="description" id="description"
					placeholder="Enter the product description"
					 ></textarea>
				</div>
				
			    <div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Product Price</label> 
					<input type="text" class="form-control"
					 aria-describedby="emailHelp" name="price" id="price" placeholder="Enter Product Price">
				</div>
		
		        <div class="container text-center">
		         <%--  <a href=""
		           class ="btn btn-outline-danger"
		          >
		            Back
		          </a> --%>
		           <a href="${pageContext.request.contextPath }/"
		           class ="btn btn-outline-danger"
		          >
		            Back
		          </a>
		        <button type="submit" class="btn btn-primary">Submit</button>
		        </div>
				
			</form>

		</div>
      </div>

	</div>

</body>
</html>