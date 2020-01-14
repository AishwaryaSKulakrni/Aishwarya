<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <title>Admin Page</title>
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
                        <a class="navbar-brand" href="index.html"><img src="Logo.png" width="275" height="200" class="img-fluid" alt="logo"></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                        <div class="collapse navbar-collapse" id="navbar">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item"> <a class="nav-link active" href="#home">HOME <span class="sr-only">(current)</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#features">ADD FACULTY</a> </li>
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

            <h1><b>Admin Page</b></h1>
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
 <h3> <center>  Add Faculty </center> </h3>  
 <hr>
 <br>
 <br>


<form name="registerForm" action="regiater_faculty" method="post" >

  <div class="form-row">
    <div class="form-group col-md-2"></div>
    <div class="form-group col-md-4">
      
      <input type="Name" class="form-control" id="name" name="name" placeholder="Name">
    </div>
    <div class="form-group col-md-4">
      
      <input type="Department" class="form-control" id="department" name="department" placeholder="Department">
    </div>
     <div class="form-group col-md-2"></div>
  </div>




<div class="form-row">
    <div class="form-group col-md-2"></div>
    <div class="form-group col-md-4">
      
      <input type="Employee ID" class="form-control" id="emp_id" name="emp_id" placeholder="Employee ID">
    </div>
    <div class="form-group col-md-4">
      
      <input type="Designation" class="form-control" id="designation" name="designation" placeholder="Designation">
    </div>
     <div class="form-group col-md-2"></div>
  </div>

  

 <div class="form-row">
    <div class="form-group col-md-2"></div>
    <div class="form-group col-md-4">
      
      <input type="Email ID" class="form-control" id="email" name="email" placeholder="Email ID">
    </div>
    <div class="form-group col-md-4">
      
      
      <input type="Password" class="form-control" id="password" name="password" placeholder="Password" pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,}" >
    </div>
     <div class="form-group col-md-2"></div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-2"></div>
    <div class="form-group col-md-4">
      
      <input type="Contact number" class="form-control"  id="phone" name="phone" placeholder="Contact Number" size="10">
    </div>
    
    
     <div class="form-row">
    <div class="form-group col-md-2"></div>
    <div class="form-group col-md-4">
    <button type="Submit" class="btn btn-primary">Register</button>
    </div>
  
  
</center>
<br>
<br>
<br>

</body>
</html>