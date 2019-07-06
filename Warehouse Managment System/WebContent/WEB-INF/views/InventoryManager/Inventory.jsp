<%@page import="java.util.Iterator"%>
<%@page import="com.wms.model.Inventory"%>
<%@page import="java.util.List"%>
<%@page import="com.wms.service.InventoryManagerServices"%>
<%@page import="com.wms.service.IInventoryManager"%>
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

							<button class="btn btn-primary col-2 mr-2" data-toggle="modal" data-target="#exampleModalCenter">
								<i class="fas fa-plus-circle"> Add Item</i>
							</button>

							<button class="btn btn-danger col-2" data-toggle="modal" data-target="#deleteAll">
								<i class="fas fa-minus-circle"> Delete All</i>
							</button>
						</div>
						<div class="row mt-3 ml-5 mr-5">
						
						
						<%
							IInventoryManager iInventoryManager = new InventoryManagerServices();
							List<Inventory> itemList= iInventoryManager.getInventoryList();
							Iterator<Inventory> it_list = itemList.iterator();
						%>
						
							<table class="table table-hover">
								<thead class="p-3 mb-2 bg-primary text-white">
									<tr>
										<th scope="col">Item No</th>
										<th scope="col">Name</th>
										<th scope="col">Status</th>
										<th scope="col">Condition</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								
								<%
								
									while (it_list.hasNext()) {
										Inventory inventory =  new Inventory();
										inventory = it_list.next();
								%>
							
								<tbody>
									<tr>
										<th scope="row"><%=inventory.getItemNo()%></th>
										<td><b><%=inventory.getName()%></b></td>
										<td><%=inventory.getStatus()%></td>
										<td><%=inventory.getItemNo()%></td>
										<td>
												<div class="row">
												 <button  class="btn btn-info btn-circle mr-1">
                    								<i class="fas fa-eye"></i>
                  								 </button>
                  
                  
								                  <button type="submit" class="btn btn-success btn-circle mr-1">
								                    <i class="far fa-edit"></i>
								                  </button>
                  								<form action="deleteItemByIdServlet" method="POST">
                  								  <input type="hidden" name="itemNo" value="<%=inventory.getItemNo()%>">
								                  <button type="submit" class="btn btn-danger btn-circle ">
								                    <i class="fas fa-trash"></i>
								                  </button>
								                 </form>
                  								</div>
                 					 </td>
										
									</tr>
									
								</tbody>
								
								<%
									}
								%>
							</table>

						</div>


					</div>
				</div>
			</div>

	 <!-- Modal for add items -->
  <div class="modal fade bd-example-modal-lg" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: blue;">
        <h5 class="text-white" id="exampleModalCenterTitle"><i class="fas fa-plus mt-2"></i> ADD NEW ITEM </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        <div class="card">
                            
                            <div class="content">
 								<div class="container-fluid">                         
                                <form method="POST" action="AddItem">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <i class="fas fa-list-alt text-primary mt-3 mb-2"> Item Name</i>
                                                <input type="text" class="form-control"  placeholder="Enter Item Name" name="itemName">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                               <i class="far fa-calendar-check text-primary mt-3 mb-2"> Warranty Day</i>
                                                <input type="date" class="form-control" name="warrentyDay">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <i class="far fa-calendar-plus text-primary mt-3 mb-2"> Added Date</i>
                                                <input type="date" class="form-control" name="addedDay">
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
												<i class="fas fa-user text-primary mt-3 mb-2"> Owner</i>
                                                <input type="number" class="form-control" placeholder="Employee ID" name="employeeId">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fas fa-map-marker-alt text-primary mt-3 mb-2"> Location</i>
                                                <input type="text" class="form-control" placeholder="Storage" name="location">
                                            </div>
                                        </div>
                                    </div>

                                   
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <i class="far fa-sticky-note text-primary mt-3 mb-2"> Item Description</i>
                                                <textarea rows="3" class="form-control" placeholder="Here can be your description" name="description"></textarea>
                                            </div>
                                        </div>
                                    </div>
									<div class="row">	
										<div class="">
                                    		<button type="submit" class="btn btn-primary"><i class="fas fa-plus-circle "></i> Add Item</button>
                                    	</div>
                                    </div>
                                </form>
                                </div>  
                            </div>
                        </div>
                    </div>
        
        
        
        
        </div>
      </div>
    </div>
    
    
    
    
     <!-- Modal for add items -->
  <div class="modal fade bd-example-modal-lg" id="deleteAll" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered ml-10" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: red;">
        <h5 class="text-white" id="exampleModalCenterTitle"><i class="fas fa-minus-circle"></i> ARE YOU WANT TO DELETE ALL ITEMS</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        
        	<div class="row ml-5">
        		<div class="mr-5">
        		<form action="deleteAllItemsServlet" method="POST">
        		<button type="submit"  class="btn btn-danger btn-icon-split ">
                    <span class="icon text-white-100">
                      <i class="fas fa-trash"></i>
                    </span>
                    <span class="text">Yes, I'm Sure</span>
                  </button></form>
               </div>   
                  <div class="ml-2">
                  <button  class="btn btn-info btn-icon-split " data-dismiss="modal">
                    <span class="icon text-white-100">
                      <i class="fas fa-check"></i>
                    </span>
                    <span class="text">No, I'm Sorry</span>
                  </button>
                 </div> 
           </div>
      </div>
    </div>
    
    
   </div> 
 </div>   
  </div>
  </div>
	

	









	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>