<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- page content begins here -->

	<div class="content">
		<div class="container-fluid">

			<div class="col-xl-12 col-md-6 mb-12">
				<div class="card border-left-primary shadow h-100 py-2">
					<div class="card-body">
						<div class="row">
							<div class="col mr-1">
								<div
									class="h5 text-primary mb-0 text-uppercase font-weight-bold">All
									Inventory Items</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-list-alt fa-2x text-primary"></i>
							</div>
						</div>
						<div class="row ml-2">

							<button class="btn btn-primary col-2 mr-2">
								<i class="fas fa-plus-circle"> Add Item</i>
							</button>

							<button class="btn btn-danger col-2">
								<i class="fas fa-minus-circle"> Delete All</i>
							</button>
						</div>
						<div class="row mt-3 ml-5 mr-5">
						
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First</th>
										<th scope="col">Last</th>
										<th scope="col">Handle</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

						</div>


					</div>
				</div>
			</div>




		</div>
	</div>








	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>