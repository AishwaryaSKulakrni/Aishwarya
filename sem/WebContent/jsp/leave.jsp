<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<head>
    <title>Faculty page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Mobland - Mobile App Landing Page Template">
    <meta name="keywords" content="HTML5, bootstrap, mobile, app, landing, ios, android, responsive">

    <!-- Font -->
    <link rel="dns-prefetch" href="//fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themify-icons.css">
    <!-- Owl carousel -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
    
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/count.js"></script>
    <!-- Main css -->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target="#navbar" data-offset="30">

    <!-- Nav Menu -->

    <div class="nav-menu fixed-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-dark navbar-expand-lg">
                        <a class="navbar-brand" href="leave.jsp"><img src="Logo.png" width="275" height="200" class="img-fluid" alt="logo"></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                        <div class="collapse navbar-collapse" id="navbar">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item"> <a class="nav-link active" href="#home">HOME <span class="sr-only">(current)</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#pricing">LEAVE APPLICATION</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#gallery">CHANGE PASSWORD</a></li>
                                <li class="nav-item"> <a class="nav-link" href="main.jsp">LOGOUT</a> </li>
                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>


    <header class="bg-gradient" id="home">
        <div class="container mt-5">

            <h1><b>LEAVE MANAGEMENT SYSTEM</b></h1>
            <br>
            <br>
            <img src="leave.png" class="img-rounded"  weidth="300" height="500">
           
        </div>
        <br>
        <br>
        <br>
    </header>

    

    <div class="section light-bg" id="features">    


        <div class="container"> 
 <br>
 <br>
 <br>
 <br>
 






<br>
<br>
<br>

    
  
 















            


    <div class="section light-bg" id="gallery">
        <div class="container">
            <br>
            <br>
            <br>
            <br>
            <center> <h3> Change Password </h3></center>
 <hr> 
            <br>
            <br>

            
            

    <div class="form-row">

    <div class="form-group col-md-4"></div>
    <div class="form-group col-md-4">
       
      
    </div>
    <div class="form-group col-md-4">
      
      
    </div><div class="form-group col-md-4"></div>
    <div class="form-group col-md-4">
       
      <input type="password" class="form-control" id="password" name="password" placeholder="New Password" size="6">
    </div>
    <div class="form-group col-md-4">
      
      
    </div>


    <div class="form-group col-md-4"></div>
    <div class="form-group col-md-4">
       
      <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" size="6">
    </div>
    <div class="form-group col-md-4">
      
      
    </div>


        </div>
<br>
    
 <center> 
  <button type="submit" class="btn btn-primary" id="pass_ch" name="pass_ch">Submit</button>
</center>
    </div>
    <!-- // end .section -->




<form class="login100-form validate-form"  method="POST" action="send_leave">
    <div class="section" >
        <div class="container" id="box">
        	
        	
        	<br>
        	<br>
        	<br>
        	<br>
        	<center><h3>RAMAIAH INSTITUTE OF TECHNOLOGY</h3>
        		<hr>
        	<br>
        	<h4>Application of Casual Leave / Restricted Holiday</h4>

        	<h5>Department of IT Servies</h5></center>
        	<br> 
    <div id="print_data">        
  <table class="table table-bordered" >
    
      <tr>
        <th>SL No</th>
        <th>Details</th>
        <th></th>
      </tr>
    
    <tbody>
      <tr>
        <td>1</td>
        <td>Name</td>
        <td><input type="text" id="user" readonly  name="user" value="<% out.println(session.getAttribute("user")); %>" class="form-control" >
        <input type="text" name="name" id="name" readonly></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Designation</td>
        <td><input type="text" readonly name="designation" id="designation" ></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Dates</td>
        <td><input type="date" id="date" name="date" ></td>
      </tr>
      <tr>
        <td>4</td>
        <td>Reasons</td>
        <td><input type="text"  name="reason" id="reason"></td>
      </tr>
      <tr>
        <td>5</td>
        <td>No. of days of CL/RH at credit</td>
        <td><input type="text" name="credit" id="credit" value="15" readonly></td>
      </tr>
      <tr>
        <td>6</td>
        <td>No. of days of CL/RH availed so far</td>
        <td><input type="text" name="avail"  readonly value="0" id="avail"></td>
      </tr>
      <tr>
        <td>7</td>
        <td>Balanced Leave</td>
        <td><input type="text" name="balance" id="balance" readonly></td>
      </tr>
    </tbody>
  </table>
  </div>
  <br>
  <center> 
  <button type="submit" class="btn btn-primary"  id="submit1">Submit</button>
  <button type="button" class="btn btn-primary"   id="submit2" style="display:none;">Submit</button>
</center>
 <br>
 <center> <h6> Alternate arrangements (if required, please attach a seperate sheet)</h6></center>
 <br>
 <br>

 <table class="table table-bordered">
    
    <tbody>
      <tr>
        <td>SL NO.</td>
        <td>Date/Day</td>
        <td>class details</td>
        <td> Names of the Faculty taking class</td>
      </tr>
      <tr>
        <td>1. </td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>2.</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>3.</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>4.</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>


        </div>
 </div>
    <!-- // end .section -->


    <div class="section pt-0">
        <div class="container" id="pricing">
            
                
  <pre>                                                                                                             Signature of Staff</pre>
  <hr>
  <br>
  <h6> Recommended for Sanction/Not Sanction</h6>
  <br>
  <br>
  <pre>                                                                                                             Signature of H.O.D</pre>
  <hr>
  <br>
  <h6> Sanction/Not Sanction</h6>
  <br>
  <br>
  <br>
  <pre>                                                                                                         Signature of Principal</pre>
  <hr>

        </div>
        <center>
<br>
<h6> Note: Prior approval of competent authority should be obtained before proceeding on leave</h6> </center>
<br>
<center>
             <button class="btn btn-primary hidden-print" id=""><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
	    </center>
</form>
<hr>

    </div>
  

       
    </footer>

    <!-- jQuery and Bootstrap -->
    
    
    <script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    <!-- Plugins JS -->
    <script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
    <!-- Custom JS -->
    <script src="<%=request.getContextPath()%>/js/script.js"></script>

</body>

</html>
    