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
									class="h5 text-primary mb-0 text-uppercase font-weight-bold">Refilling 
									Inventory Items</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-recycle fa-2x text-primary"></i>
							</div>
						</div>
						<div class="row ml-2 pull-right">

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
							List<Inventory> itemList= iInventoryManager.getInventoryList("Refil");
							Iterator<Inventory> it_list = itemList.iterator();
							DecimalFormat form = new DecimalFormat("0");
						%>
						
							<table class="table table-hover">
								<thead class="p-3 mb-2 bg-primary text-white">
									<tr>
										<th scope="col">Item No</th>
										<th scope="col">Name</th>
										<th scope="col">Owner</th>
										<th scope="col">Status</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								
								<%
								
									while (it_list.hasNext()) {
										Inventory inventory =  new Inventory();
										inventory = it_list.next();
										
										
										 
								%>
							
								<tbody>
									<tr id="<%= inventory.getItemNo() %>">
										<th scope="row" ><%=inventory.getItemNo()%></th>
										<td data-target="name"><b><%=inventory.getName()%></b></td>
										<td data-target="warrentyDay" style="display: none;"><b><%=inventory.getWarrentyYear()%></b></td>
										<td data-target="addedDay" style="display: none;"><b><%=inventory.getAddedDate()%></b></td>
										<td data-target="own" style="display: none;"><b><%=inventory.getOwner()%></b></td>
										<td data-target="storage" style="display: none;"><b><%=inventory.getLocation()%></b></td>
										<td data-target="description" style="display: none;"><b><%=inventory.getDescription()%></b></td>
										<td data-target="itemNo" style="display: none;"><b><%=inventory.getItemNo()%></b></td>
										<td data-target="IItemID" style="display: none;"><b><%=inventory.getItemNo()%></b></td>
										<td data-target="status" style="display: none;"><b><%=inventory.getStatus()%></b></td>
										
										
										<td>
										
												<%if(inventory.getStatus().equals("Allocated")){ %>
												Emp-<%=inventory.getOwner() %>
											
											<% 
												}else{
												
											%>
												<%=inventory.getOwner() %>
											<% 
												}
											%>
										</td>
										
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
												<div class="row">
												 <!-- view button -->
                  								 <a href="#" data-role="view" class="btn btn-info btn-circle mr-1 btn-sm" data-id="<%= inventory.getItemNo() %>"><i class="fas fa-eye"></i></a>
            									<!--edit button  -->
								                  <a href="#" data-role="update" class="btn btn-success btn-circle mr-1 btn-sm" data-id="<%= inventory.getItemNo() %>"><i class="far fa-edit"></i></a>
								                  
                  								<form action="deleteItemByIdServlet?action=RF" method="POST">
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
        <div class="modal-header" style="background-color:blue;">
        <h5 class="text-white" id="exampleModalCenterTitle"><i class="fas fa-plus mt-2"></i> ADD NEW ITEM </h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        <div class="card">
                            
                            <div class="content">
 								<div class="container-fluid">                         
                                <form method="POST" action="AddRefillingItem">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fas fa-list-alt text-primary mt-3 mb-2"> Item Name</i>
                                                <input type="text" class="form-control"  placeholder="Enter Item Name" name="itemName">
                                            </div>
                                        </div>
                            
                                        <div class="col-md-6">
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
        <div class="modal-header bg-danger">
        <h5 class="text-white" id="exampleModalCenterTitle"><i class="fas fa-minus-circle"></i> ARE YOU WANT TO DELETE ALL ITEMS</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        
        	<div class="row ml-5">
        		<div class="mr-5">
        		<form action="deleteAllItemsServlet?action=RF" method="POST">
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
 
 
 <!--edit modal  -->
   <div class="modal fade bd-example-modal-lg" id="update" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header bg-success" >
        <h5 class="text-white" id="exampleModalCenterTitle"><i class="far fa-edit mt-2"></i> UPDATE</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        <div class="card">
                            
                            <div class="content">
 								<div class="container-fluid">                         
                                <form method="POST" action="UpdateItemsServelet?action=RF">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fas fa-list-alt text-success mt-3 mb-2"> Item Name</i>
                                                <input type="text" class="form-control"  placeholder="Enter Item Name" name="itemName" id="itemName">
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="far fa-calendar-plus text-success mt-3 mb-2"> Added Date</i>
                                                <input type="date" class="form-control" name="addedDay" id="addDay">
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
												<i class="fas fa-user text-success mt-3 mb-2"> Owner</i>
                                                <input type="number" class="form-control" placeholder="None" name="employeeId" id="owner">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fas fa-map-marker-alt text-success mt-3 mb-2"> Location</i>
                                                <input type="text" class="form-control" placeholder="Storage" name="location" id="store">
                                            </div>
                                        </div>
                                    </div>

                                   
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <i class="far fa-sticky-note text-success mt-3 mb-2"> Item Description</i>
                                                <textarea rows="3" class="form-control" placeholder="Here can be your description" name="description" id="des"></textarea>
                                            </div>
                                        </div>
                                    </div>
									<div class="row">	
										<div class="">
                                    		<button type="submit" class="btn btn-success"><i class="fas fa-edit "></i> Update	</button>
                                    	</div>
                                    </div>
                                    
                                    <input type="hidden" class="form-control" placeholder="Storage" name="itemNo" id="itemNo">
                                </form>
                                </div>  
                            </div>
                        </div>
                    </div>
        </div>
      </div>
    </div>
 
 <!--end of edit modal  -->
 
 
 
 
 
 
  <!--view modal  -->
   <div class="modal fade bd-example-modal-lg" id="view" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info" >
        <h5 class="text-white" id="exampleModalCenterTitle "><i class="fas fa-eye mt-2"></i> VIEW DETAILS</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" style="color: white ">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        <div class="card">
                            
                            <div class="content">
 								<div class="container-fluid"> 
 								                   
                                    <div class="row">
                                    <div class="col-md-4">
                                            <div class="form-group">
												<i class="fas fa-file-code text-info mt-3 mb-2"> Item No</i>
                                                <input type="text" class="form-control"  name="employeeId" id="IItemNo" disabled>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <i class="fas fa-list-alt text-info mt-3 mb-2"> Item Name</i>
                                                <input type="text" class="form-control"  placeholder="Enter Item Name" name="itemName" id="itemNames" disabled>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <i class="far fa-calendar-plus text-info mt-3 mb-2"> Added Date</i>
                                                <input type="date" class="form-control" name="addedDay" id="addDays" disabled>
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
												<i class="fas fa-user text-info mt-3 mb-2"> Owner</i>
                                                <input type="number" class="form-control" placeholder="None" name="employeeId" id="owners" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fas fa-map-marker-alt text-info mt-3 mb-2"> Location</i>
                                                <input type="text" class="form-control" placeholder="Storage" name="location" id="stores" disabled>
                                            </div>
                                        </div>
                                    </div>
									
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <i class="far fa-sticky-note text-info mt-3 mb-2"> Item Description</i>
                                                <textarea rows="3" class="form-control" placeholder="Here can be your description" name="description" id="dess" disabled></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                        </div>
                    </div>
        </div>
      </div>
    </div>
 
 <!--end of view modal  -->
 
  
  </div>
  </div>
	

	

<script>
$(document).ready(function(){

    $(document).on('click','a[data-role=update]',function(){
  	 
    	var id  = $(this).data('id');
        var itemNo  = $('#'+id).children('td[data-target=itemNo]').text();
        var itemName  = $('#'+id).children('td[data-target=name]').text();
        var addDay  = $('#'+id).children('td[data-target=addedDay]').text();
        var owner  = $('#'+id).children('td[data-target=own]').text();
        var store  = $('#'+id).children('td[data-target=storage]').text();
        var des  = $('#'+id).children('td[data-target=description]').text();

        $('#itemName').val(itemName);
        $('#itemNo').val(itemNo);
        $('#addDay').val(addDay);
        $('#owner').val(owner);
        $('#store').val(store);
        $('#des').val(des);
        $('#update').modal('toggle');
  	  
       
        
        
    })
});

</script>
<script type="text/javascript">


$(document).ready(function(){

    $(document).on('click','a[data-role=view]',function(){
  	 
    	var id  = $(this).data('id');
        var itemNames  = $('#'+id).children('td[data-target=name]').text();
        var addDays  = $('#'+id).children('td[data-target=addedDay]').text();
        var owners  = $('#'+id).children('td[data-target=own]').text();
        var stores  = $('#'+id).children('td[data-target=storage]').text();
        var dess  = $('#'+id).children('td[data-target=description]').text();
        var itemNos  = $('#'+id).children('td[data-target=IItemID]').text();
        var status  = $('#'+id).children('td[data-target=status]').text();

        $('#itemNames').val(itemNames);
        $('#addDays').val(addDays);
        $('#owners').val(owners);
        $('#stores').val(stores);
        $('#dess').val(dess);
        $('#IItemNo').val(itemNos);
        $('#status').val(status);
        $('#view').modal('toggle');
  	  
       
        
        
    })
});



</script>






	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>