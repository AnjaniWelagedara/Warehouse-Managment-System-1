<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
									class="h5 text-primary mb-0 text-uppercase font-weight-bold">Replacing 
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
						<div class="row mt-3 ml-5 mr-5  ">
						
						
						<%
							IInventoryManager iInventoryManager = new InventoryManagerServices();
							int totalDays, remaingDays;
							List<Inventory> itemList= iInventoryManager.getInventoryList();
							Iterator<Inventory> it_list = itemList.iterator();
							DecimalFormat form = new DecimalFormat("0");
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
										totalDays = iInventoryManager.getTotalDays(inventory.getItemNo());
										remaingDays = iInventoryManager.getRemaingDays(inventory.getItemNo());
										double condition;
										condition = ((double)remaingDays / totalDays)*100; 
										 
								%>
							
								<tbody>
									<tr id="<%= inventory.getItemNo() %>">
										<th scope="row"><%=inventory.getItemNo()%></th>
										<td data-target="name"><b><%=inventory.getName()%></b></td>
										<td data-target="warrentyDay" style="display: none;"><b><%=inventory.getWarrentyYear()%></b></td>
										<td data-target="addedDay" style="display: none;"><b><%=inventory.getAddedDate()%></b></td>
										<td data-target="owner" style="display: none;"><b><%=inventory.getOwner()%></b></td>
										<td data-target="storage" style="display: none;"><b><%=inventory.getLocation()%></b></td>
										<td data-target="description" style="display: none;"><b><%=inventory.getDescription()%></b></td>
										<td><%if(inventory.getStatus().equals("Allocated")){%>
											
											<span class="badge badge-success">Allocated</span>
										<% 
											}else{
										%>
										
										<span class="badge badge-info">Unallocated</span>
										
										<%
											}
										%>
										
										</td>
										
										<td>
													
											<%if(condition >= 80){ %>
												<div class="progress " style="width: 100px ;">
  												<div class="progress-bar bg-info text-dark" role="progressbar" style="width: <%=form.format(condition)%>%" aria-valuenow="25" 
  													aria-valuemin="0" aria-valuemax="100" ><%=form.format(condition)%>%</div>
												</div>					
											<% } else if(condition >= 60){%>
											
												<div class="progress " style="width: 100px ;">
  												<div class="progress-bar bg-success text-dark" role="progressbar" style="width: <%=form.format(condition)%>%" aria-valuenow="25" 
  													aria-valuemin="0" aria-valuemax="100" ><%=form.format(condition)%>%</div>
												</div>												 
											
											<% } else if (condition >= 40){%>
												<div class="progress " style="width: 100px ;">
  												<div class="progress-bar bg-primary text-dark" role="progressbar" style="width: <%=form.format(condition)%>%" aria-valuenow="25" 
  													aria-valuemin="0" aria-valuemax="100" ><%=form.format(condition)%>%</div>
												</div>												
											
											<% } else if (condition >= 20){%>
												
												<div class="progress " style="width: 100px ;">
  												<div class="progress-bar bg-warning text-dark" role="progressbar" style="width: <%=form.format(condition)%>%" aria-valuenow="25" 
  													aria-valuemin="0" aria-valuemax="100" ><%=form.format(condition)%>%</div>
												</div>												
											<% }else{%>
												<div class="progress " style="width: 100px ;">
  												<div class="progress-bar bg-danger text-dark" role="progressbar" style="width: <%=form.format(condition)%>%" aria-valuenow="25" 
  													aria-valuemin="0" aria-valuemax="100" ><%=form.format(condition)%>%</div>
												</div>												
											
											<%} %>
												
									
										
										
										
									
										
										</td>
										<td>
												<div class="row">
												 <button  class="btn btn-info btn-circle mr-1 btn-sm">
                    								<i class="fas fa-eye"></i>
                  								 </button>
                  
                  
<!-- 								                  <button type="submit" class="btn btn-success btn-circle mr-1 btn-sm"  data-toggle="modal" data-target="#update" data-whatever="@getbootstrap"  >
								                    <i class="far fa-edit"></i>
								                  </button> -->
								                  
								                  <a href="#" data-role="update" class="btn btn-success btn-circle mr-1 btn-sm" data-id="<%= inventory.getItemNo() %>"><i class="far fa-edit"></i></a>
								                  
                  								<form action="deleteItemByIdServlet" method="POST">
                  								  <input type="hidden" name="itemNo" value="<%=inventory.getItemNo()%>">
								                  <button type="submit" class="btn btn-danger btn-circle btn-sm">
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
    
    
    
    
     <!-- Modal for delete all items -->
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
 
 
 
   <div class="modal fade bd-example-modal-lg" id="update" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                                                <input type="text" class="form-control"  placeholder="Enter Item Name" name="itemName" id="mId">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                               <i class="far fa-calendar-check text-primary mt-3 mb-2"> Warranty Day</i>
                                                <input type="date" class="form-control" name="warrentyDay" id="wrrDay">
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
 
 
 
 
  
  </div>
  </div>
	

	

<script>
$(document).ready(function(){

    $(document).on('click','a[data-role=update]',function(){
  	 
    	var id  = $(this).data('id');
        var firstName  = $('#'+id).children('td[data-target=name]').text();
        var wrDay  = $('#'+id).children('td[data-target=date]').text();

        $('#mId').val(firstName);
        $('#wrrDay').val(wrDay);
        $('#update').modal('toggle');
  	  
    })
});
</script>







	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>