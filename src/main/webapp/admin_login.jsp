<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>


<form action="admin_servlet" method="post" style="background-color:  rgb(20 23 26)">>
<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="img/studentregistration.jpg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Admin-Login</h3>

                
                

               

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example97" class="form-control form-control-lg"  name="email" required="required"/>
                  <label class="form-label" for="form3Example97">Email ID</label> <br>
                  <label class="form-label text-success" for="form3Example97">Test:Admin@gmail.com</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="password" id="form3Example97" class="form-control form-control-lg" name="password" required="required" />
                  <label class="form-label" for="form3Example97">Password</label><br>
                  <label class="form-label text-success" for="form3Example97">Test:123</label>
                </div>
                

				

                <div class="d-flex justify-content-end pt-3">
                         
                 <button type="submit" class="btn btn-warning btn-lg ms-2">Login</button>
                </div>



				
                
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</form>



</body>
</html>