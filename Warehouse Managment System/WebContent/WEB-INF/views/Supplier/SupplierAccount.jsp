<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
<!-- Section: Magazine v.3 -->
<section class="magazine-section my-5">

  <!-- Section heading -->
  <h2 class="h1-responsive font-weight-bold text-center my-5">SUPPLIER ACCOUNT</h2>
  <!-- Section description -->
  <p class="text-center w-responsive mx-auto mb-5">Here all the confirmed suppliers can success their needs.</p>

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-lg-4 col-md-12 mb-lg-0 mb-5">

      <!-- Featured news -->
      <div class="single-news mb-3">

        <!-- Image -->
        <div class="view overlay rounded z-depth-2 mb-4">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Others/images/86.jpg" alt="Sample image">
          <a>
            <div class="mask rgba-white-slight"></div>
          </a>
        </div>

        <!-- Grid row -->
        <div class="row mb-3">

          <!-- Grid column -->
          <div class="col-12">

            <!-- Badge -->
            <a href="#!"><button type="button" class="btn btn-primary" data-toggle="modal" href="#prModal">Add Products</button></a>

          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Title -->
        <div class="d-flex justify-content-between">
          <div class="col-11 text-truncate pl-0 mb-3">
          <a href="#!"><button type="button" class="btn btn-info">View</button></a><br>
          
            <a class="font-weight-bold">Product Management</a>
            
          </div>
          <a><i class="fas fa-angle-double-right"></i></a>
        </div>

      </div>
      <!-- Featured news -->

      <!-- Small news -->
     
      <!-- Small news -->

      <!-- Small news -->
  
      <!-- Small news -->
	</div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-4 col-md-6 mb-md-0 mb-5">

      <!-- Featured news -->
      <div class="single-news mb-3">

        <!-- Image -->
        <div class="view overlay rounded z-depth-2 mb-4">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Others/images/31.jpg" alt="Sample image">
          <a>
            <div class="mask rgba-white-slight"></div>
          </a>
        </div>

        <!-- Grid row -->
        <div class="row mb-3">

          <!-- Grid column -->
          <div class="col-12">

            <!-- Badge -->
            <a href="#!"><button type="button" class="btn btn-success"  data-toggle="modal" href="#btModal">Add Services</button></a>

          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Title -->
        <div class="d-flex justify-content-between">
          <div class="col-11 text-truncate pl-0 mb-3">
          
          <a href="#!"><button type="button" class="btn btn-info">View</button></a><br>
            <a class="font-weight-bold">Service Management</a>
          </div>
          <a><i class="fas fa-angle-double-right"></i></a>
        </div>

      </div>
      <!-- Featured news -->

      <!-- Small news -->
    
      <!-- Small news -->

      <!-- Small news -->
      
      <!-- Small news -->

      <!-- Small news -->
   
      <!-- Small news -->

      <!-- Small news -->
    
      <!-- Small news -->

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-4 col-md-6 mb-0">

      <!-- Featured news -->
      <div class="single-news mb-3">

        <!-- Image -->
        <div class="view overlay rounded z-depth-2 mb-4">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Others/images/52.jpg" alt="Sample image">
          <a>
            <div class="mask rgba-white-slight"></div>
          </a>
        </div>

        <!-- Grid row -->
        <div class="row mb-3">

          <!-- Grid column -->
          <div class="col-12">

            <!-- Badge -->
            <a href="#!"><button type="button" class="btn btn-warning"  data-toggle="modal" href="#pkModal">Add Packages</button></a>

          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Title -->
        <div class="d-flex justify-content-between">
          <div class="col-11 text-truncate pl-0 mb-3">
          
           <a href="#!"><button type="button" class="btn btn-info">View</button></a><br>
            <a class="font-weight-bold">Package Management</a>
          </div>
          <a><i class="fas fa-angle-double-right"></i></a>
        </div>

      </div>
      <!-- Featured news -->

      <!-- Small news -->
     
      <!-- Small news -->

      <!-- Small news -->
     
      <!-- Small news -->

      <!-- Small news -->
    
      <!-- Small news -->

      <!-- Small news -->
     
      <!-- Small news -->

    </div>
    <!-- Grid column -->

  </div>
  <!-- Grid row -->

</section>
<!-- Section: Magazine v.3 -->
<!-- Grid row -->
	
	
	
	
	<div class="modal fade" id="prModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Products</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="container">
	<div class="row">
  		<div class="col-md-12">
   		<h1>Supplier Add Product</h1>
      	</div>
  	</div>





</div>

<div class="container">
  
  <div class="row">
    <div class="col-md-8">
    <h1>Adding Product</h1>
    </div>
  </div>
  
    
  
<div class="row">
  
  <div class="col-md-8">
  <form role="form">
    
 <div class="form-group">
   <label for="productname" class="loginFormElement">Product Name</label>
   <input class="form-control" id="productname" type="email">
 </div>
    
 <div class="form-group">
   <label for="productname" class="loginFormElement">Product Id</label>
   <input class="form-control" id="productname" type="email">
 </div>
    
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Product Price</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Quantity</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
 
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Warranty</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
   

<div class="form-group">
 
<label class="control-label">Product Image</label>
 
<input class="filestyle" data-icon="false" type="file">
 
</div>
    
    <div class="form-group">
      <label class="loginformelement" for="productdescription">Product Description</label>
  	  <input id="productdescription" class="form-control input-lg" placeholder="Large" type="text"><div class="container">
      </div>
 
    <button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Add Product</button>
  
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


<div class="modal fade" id="btModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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



 <div class="modal fade" id="pkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Packages</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      
      <div class="container">
	<div class="row">
  		<div class="col-md-12">
   		<h1>Supplier Add Packages</h1>
      	</div>
  	</div>





</div>

<div class="container">
  
  <div class="row">
    <div class="col-md-8">
    <h1>Adding Packages</h1>
    </div>
  </div>
  
    
  
<div class="row">
  
  <div class="col-md-8">
  <form role="form">
    
   <select class="form-control" id="productSelect"><option>Select a Package Type</option>
      <option>Product Packages</option>
      <option>Service Packages</option>
      
    </select>
    
   
    
 <div class="form-group">
   <label for="productname" class="loginFormElement">Package Id</label>
   <input class="form-control" id="productname" type="email">
 </div>
    
 <div class="form-group">
   <label for="productprice" class="loginFormElement">Package Name</label>
   <input class="form-control" id="productprice" type="email">
 </div>
 
 
 
  <div class="form-group">
      <label class="loginformelement" for="productdescription">Package Description</label>
  	  <input id="productdescription" class="form-control input-lg" placeholder="Large" type="text"><div class="container">
      </div>
 
    <button type="submit" id="loginSubmit" class="btn btn-success loginFormElement">Add Package</button>
  
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