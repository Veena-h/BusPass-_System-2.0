<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus-System</title>
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

 <%-- <script type="text/javascript">
        window.onload = function() {
            var success = <%= request.getAttribute("success") != null && (boolean) request.getAttribute("success") %>;
            if (success == 1) {
                 alert("Record inserted successfully!");
                window.location.href = 'index.jsp'; 
            } else {
                 alert("Failed to insert record.");
                window.location.href = 'index.jsp'; 
            }
        }
    </script> --%>

</head>
<body>


<form action="student_registration_servlet" method="post">
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
                <h3 class="mb-5 text-uppercase">Student registration form</h3>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg"  name="fname" required="required"/>
                      <label class="form-label" for="form3Example1m">First name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="lname"  required="required"/>
                      <label class="form-label" for="form3Example1n">Last name</label>
                    </div>
                  </div>
                </div>
				
				
				<div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="address" required="required"/>
                  <label class="form-label" for="form3Example8">Address</label>
                </div>
                <!-- <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m1" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1m1">Mother's name</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n1" class="form-control form-control-lg" />
                      <label class="form-label" for="form3Example1n1">Father's name</label>
                    </div>
                  </div>
                </div> -->

                <div class="form-outline mb-4">
                  <input type="number" id="form3Example8" class="form-control form-control-lg" name="phone" required="required" />
                  <label class="form-label" for="form3Example8">Phone-no</label>
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender"  id="femaleGender"
                      value="Female" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Male" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="otherGender"
                      value="Other" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

                <!-- <div class="row">
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">State</option>
                      <option value="2">Option 1</option>
                      <option value="3">Option 2</option>
                      <option value="4">Option 3</option>
                    </select>

                  </div>
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">City</option>
                      <option value="2">Option 1</option>
                      <option value="3">Option 2</option>
                      <option value="4">Option 3</option>
                    </select>

                  </div>
                </div> -->

                <div class="form-outline mb-4">
                  <input type="date" id="form3Example9" class="form-control form-control-lg"  name="dob" required="required"/>
                  <label class="form-label" for="form3Example9">DOB</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example90" class="form-control form-control-lg" name="dept" required="required"/>
                  <label class="form-label" for="form3Example90">Department</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg"  name="course" required="required"/>
                  <label class="form-label" for="form3Example99">Course</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="number" id="form3Example99" class="form-control form-control-lg"  name="prn_no" required="required"/>
                  <label class="form-label" for="form3Example99">PRN NO</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example97" class="form-control form-control-lg"  name="email" required="required"/>
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                 <div class="form-outline mb-4">
                  <input type="password" id="form3Example97" class="form-control form-control-lg" name="password" required="required" />
                  <label class="form-label" for="form3Example97">Password</label>
                </div>
                 

                <div class="d-flex justify-content-end pt-3">
                 <label class="form-label " style="margin-right: 18px ; margin-top: 5px" for="form3Example97">already Register :</label>
                   <a href="student_login.jsp" class="btn btn-primary btn-lg">Login</a>
                  <button type="submit" class="btn btn-warning btn-lg ms-2">Register</button>
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