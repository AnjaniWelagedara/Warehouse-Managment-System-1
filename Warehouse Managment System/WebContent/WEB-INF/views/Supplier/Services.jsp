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
	 <div class="col-xl-12 col-md-6 mb-4">
              <div class="card shadow h-100 py-2">
                <div class="card-body">
                
                <div class="card card-cascade narrower">

  <!--Card image-->
  <div
    class="view view-cascade gradient-card-header blue-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">

   

    <a href="" class="white-text mx-3">SERVICES</a>

    <div>
            <a href="#!"><button type="button" class="btn btn-success" data-toggle="modal" href="#serviceModal">Add Service</button></a>
<button type="button" class="btn btn-danger">Delete All</button>      
    </div>

  </div>
                
                
 <table class="table">
  <thead class=" bg-success text-white">
    <tr>
      <th scope="col">Service Name</th>
      <th scope="col">Service Id</th>
      <th scope="col">Service Price</th>
      <th scope="col">Amount of Hours</th>
      <th scope="col">Service Description</th>
      <th scope="col">OPTIONS</th>
      </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Markr</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td><div>
      <button type="button" class="btn btn-outline-success btn-rounded btn-sm px-2">
        <i class="fas fa-pencil-alt mt-0"></i>
      </button>
      <button type="button" class="btn btn-outline-danger btn-rounded btn-sm px-2">
        <i class="far fa-trash-alt mt-0"></i>
      </button>
      
    </div></td>
      </tr>
      
      
     <tr>
      <th scope="row">1</th>
      <td>Markr</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td><div>
      <button type="button" class="btn btn-outline-success btn-rounded btn-sm px-2">
        <i class="fas fa-pencil-alt mt-0"></i>
      </button>
      <button type="button" class="btn btn-outline-danger btn-rounded btn-sm px-2">
        <i class="far fa-trash-alt mt-0"></i>
      </button>
      
    </div></td>
      </tr>
    
  </tbody>
</table>


                  
                  
                  
                </div>
              </div>
            </div>
	
	</div>
	
	
	
	<div class="modal fade" id="serviceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Services</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      <div class="container">
	<div class="row">
  		<div class="col-md-12">
   		<h1>Supplier Add Services</h1>
      	</div>
  	</div>





</div>

<div class="container">
  
  <div class="row">
    <div class="col-md-8">
    <h1>Adding Service</h1>
    </div>
  </div>
  
    
  
<div class="row">
  
  <div class="col-md-8">
  <form role="form">
    
  
  <div class="form-group">
   <label for="productname" class="loginFormElement">Service Name</label>
   <input class="form-control" id="productname" type="email">
 </div>
    
    
 <div class="form-group">
   <label for="productname" class="loginFormElement">Service Id</label>
   <input class="form-control" id="productname" type="email">
 </div>
    
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Service Price</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Amount of Hours</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
 
 
 
   


    
    <div class="form-group">
      <label class="loginformelement" for="productdescription">Service Description</label>
  	  <input id="productdescription" class="form-control input-lg" placeholder="Large" type="text"><div class="container">
      </div>
 
    <button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Add Service</button>
  
    </div></form>
    
    </div>
  
  
  

  
  
  

  
  </div>
  
  <!-- /.container -->

</div>


            <div id="push"></div>
        
      
      
      
 
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>


		
	
	



	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>