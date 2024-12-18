<%@page import="com.entity.BusAdd_entity"%>
<%@page import="com.connection.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="java.util.*" %>
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



                
                                    
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                
                                
                                
                                 	
                                    <form class="form-valide" action="updateSeats_servlet" method="post">
                                    
                                    
                                     
                                         	<%
                                 		
                                 		try{
                                           /* String MainbusNo=request.getParameter("BusNo"); */
                                           int MainbusId=Integer.parseInt(request.getParameter("BusNo"));
                                           bus_model b=new bus_model(connection.getconnection());
                                           List<BusAdd_entity> bus=b.showByMainbusId(MainbusId);
                                           for(BusAdd_entity bb:bus)
                                           {
                                       
                                       
                                       %>
                                    
                                    
                                    
             		     		<input type="hidden" class="form-control" id="val-username" name="id"   value=<%=bb.getMainBusId() %> placeholder="Enter a route number" required="required">
                                    		
                                    
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Bus-no <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-username" name="bus_no"   value=<%=bb.getMainBusNo() %> placeholder="Enter a route number" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Bus-Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-email" name="bus_name"  value=<%=bb.getMainBusName() %> placeholder="Enter a route Name" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Total Seats <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="total-seats" name="tseats"  value=<%=bb.getSeats() %> placeholder="Enter a driver Name"  required="required">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Seat-assigned <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="seat-assigned" name="Asseats"   placeholder="No of seats Assigned" required="required" >
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Available-seats <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="available-seats" name="Aseats"   placeholder="No of seats Assigned" required="required">
                                            </div>
                                        </div>
                                        
                                        
                                      
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Update</button>
                                            </div>
                                        </div>
                                        <%
                                           }
                                     		 
                                           }
                                           catch(Exception e)
                                           {
                                        	   e.printStackTrace();
                                           }
                                          
                                        %>
                                       
                                    </form>
                                    
                                     	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
           <script>
    document.getElementById('available-seats').addEventListener('mouseover', function() {
        var totalSeats = parseInt(document.getElementById('total-seats').value);
        var assignedSeats = parseInt(document.getElementById('seat-assigned').value);
        
        if (!isNaN(totalSeats) && !isNaN(assignedSeats)) {
            var availableSeats = totalSeats - assignedSeats;
            document.getElementById('available-seats').value = availableSeats;
        }
    });
</script>
            
            						
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