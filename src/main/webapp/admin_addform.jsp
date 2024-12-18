
    <%@page import="com.connection.connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Bus-System</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="dashboard_assest/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="dashboard_assest/css/style.css" rel="stylesheet">
    
    <style >
   body{
   
     background-image: url("img/images/slider-bg2.jpg");
    background-repeat: no-repeat;
     background-size:cover
   }
   </style>>

</head>

<body>

   <%@include file="component/navbar.jsp" %>

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->
            
            
<!-- main bus form start -->
 <form class="form-valide" action="add_Mainbus_servlet" method="post">
		<div class="container-fluid">
                <div class="row justify-content-center">
			<div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                
						
						 <h3> Add Main-Bus Route</h3>
                                        <div class="form-group row">
                                      	 
                                            <label class="col-lg-4 col-form-label" for="val-username">Bus-Route No: <!-- <span class="text-danger">*</span> -->
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-username" name="bus_no" placeholder="Enter a route number"    >
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Bus-Route Name: <!-- <span class="text-danger">*</span> -->
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-email" name="bus_name" placeholder="Enter a route Name"  >
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Total Seats: <!-- <span class="text-danger">*</span> -->
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-email" name="seats" placeholder="Enter  of Seats"  >
                                            </div>
                                        </div>
                                        
										<div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
								
			</div></div></div></div></div></div>
			</form>
			<!-- main bus form end -->
			
			
			

            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    <form class="form-valide" action="add_bus_servlet" method="post">
                                    
                                   <h3> Add Sub Route</h3>
                                    
                                    <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">Bus-Route No <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="val-skill" name="bus_no">
                                                         <option value="">Please select</option>
                                                   
                                                      <%
											                 try{
											                        bus_model b=new bus_model(connection.getconnection());
											                        List<BusAdd_entity> al=b.selectMainBusdetails();
											                        for(BusAdd_entity s:al) {
											                %>
                                                    <option value=<%=s.getMainBusNo() %>><%=s.getMainBusNo() %> </option>
                                                   <%
							                        }
							                    } catch(Exception e) {
							                        e.printStackTrace();
							                    }
							                %>   
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">Bus-Route Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="val-skill" name="bus_name">
                                                    <option value="">Please select</option>
                                                    <%
											                 try{
											                        bus_model b=new bus_model(connection.getconnection());
											                        List<BusAdd_entity> al=b.selectMainBusdetails();
											                        for(BusAdd_entity s:al) {
											                %>
                                                   
                                                   <option value=<%=s.getMainBusName() %> > <%=s.getMainBusName() %>  </option>
                                                
                                                
                                                
                                                      <%
							                        }
							                    } catch(Exception e) {
							                        e.printStackTrace();
							                    }
							                %>    
                                                   
                                                </select>
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                        </div>
                                    
                                      <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill"> Total- Seats <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="val-skill" name="seats">
                                                         <option value="">Please select</option>
                                                   
                                                      <%
											                 try{
											                        bus_model b=new bus_model(connection.getconnection());
											                        List<BusAdd_entity> al=b.selectMainBusdetails();
											                        for(BusAdd_entity s:al) {
											                %>
                                                    <option value=<%=s.getSeats() %>><%=s.getSeats() %> </option>
                                                   <%
							                        }
							                    } catch(Exception e) {
							                        e.printStackTrace();
							                    }
							                %>   
                                                    
                                                </select>
                                            </div>
                                        </div>
                                  
                                    
                                    
                                    
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Stop-no <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-username" name="stop_no" placeholder="Enter a route number" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Stop-Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-email" name="stop_name" placeholder="Enter a route Name" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Driver-Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-confirm-password" name="dname" placeholder="Enter a driver Name" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Morning-Time<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="time" class="form-control" id="val-password" name="mtime" placeholder="" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Evening-time <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="time" class="form-control" id="val-confirm-password" name="etime"  required="required">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-suggestions">Bus-fee<span class="text-danger">*</span>
                                            </label>
                                             <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-confirm-password" name="fee"  required="required">
                                            </div>
                                        </div>
                                        
                                        
                                       <!--  <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">Best Skill <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="val-skill" name="val-skill">
                                                    <option value="">Please select</option>
                                                    <option value="html">HTML</option>
                                                    <option value="css">CSS</option>
                                                    <option value="javascript">JavaScript</option>
                                                    <option value="angular">Angular</option>
                                                    <option value="angular">React</option>
                                                    <option value="vuejs">Vue.js</option>
                                                    <option value="ruby">Ruby</option>
                                                    <option value="php">PHP</option>
                                                    <option value="asp">ASP.NET</option>
                                                    <option value="python">Python</option>
                                                    <option value="mysql">MySQL</option>
                                                </select>
                                            </div>
                                        </div> -->
                                      <!--   <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-currency">Currency <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-currency" name="val-currency" placeholder="$21.60">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-website">Website <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-website" name="val-website" placeholder="http://example.com">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-phoneus">Phone (US) <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-phoneus" name="val-phoneus" placeholder="212-999-0000">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-digits">Digits <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-digits" name="val-digits" placeholder="5">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-number">Number <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-number" name="val-number" placeholder="5.0">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-range">Range [1, 5] <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-range" name="val-range" placeholder="4">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label"><a href="#">Terms &amp; Conditions</a>  <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-8">
                                                <label class="css-control css-control-primary css-checkbox" for="val-terms">
                                                    <input type="checkbox" class="css-control-input" id="val-terms" name="val-terms" value="1"> <span class="css-control-indicator"></span> I agree to the terms</label>
                                            </div> -->
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="dashboard_assest/plugins/common/common.min.js"></script>
    <script src="dashboard_assest/js/custom.min.js"></script>
    <script src="dashboard_assest/js/settings.js"></script>
    <script src="dashboard_assest/js/gleek.js"></script>
    <script src="dashboard_assest/js/styleSwitcher.js"></script>

    <script src="dashboard_assest/plugins/validation/jquery.validate.min.js"></script>
    <script src="dashboard_assest/plugins/validation/jquery.validate-init.js"></script>

</body>

</html>