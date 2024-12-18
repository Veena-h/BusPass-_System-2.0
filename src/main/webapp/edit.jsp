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
                                
                                
                                
                                 		<%
                                 		
                                 		try{
                                          int id=Integer.parseInt(request.getParameter("id"));
                                           bus_model b=new bus_model(connection.getconnection());
                                           List<BusAdd_entity> bus=b.showbyid(id);
                                           for(BusAdd_entity bb:bus)
                                           {
                                       
                                       
                                       %>
                                    <form class="form-valide" action="updatebusdetails_servlet" method="post">
                                    
                                    
                                     
                                         
                               				<input type="hidden" class="form-control" id="id" name="id" value=<%=bb.getId() %> >
                               				
                               				
                               				
                               				
                                        
                                        
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Bus-no <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-username" name="busno"   value=<%=bb.getMainBusNo() %> placeholder="Enter a route number" readonly="readonly">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Bus-name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-username" name="busname"   value=<%=bb.getMainBusName() %> placeholder="Enter a route number" readonly="readonly">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Seats <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-username" name="seats"   value=<%=bb.getSeats() %> placeholder="Enter a route number" readonly="readonly">
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                    
                                    
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Stop-no <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-username" name="stop_no"   value=<%=bb.getStop_no() %> placeholder="Enter a route number" required="required">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Stop-Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-email" name="stop_name"  value=<%=bb.getStop_name() %> placeholder="Enter a route Name" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Driver-Name <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-confirm-password" name="dname"  value=<%=bb.getBus_fee() %> placeholder="Enter a driver Name" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Morning-Time<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="time" class="form-control" id="val-password" name="mtime" value=<%=bb.getDriver_name() %>   required="required">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Evening-time <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="time" class="form-control" id="val-confirm-password" name="etime"  value=<%=bb.getMorning_time() %> required="required">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-suggestions">Bus-fee<span class="text-danger">*</span>
                                            </label>
                                             <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-confirm-password" name="fee"  value=<%=bb.getEvening_time() %> required="required">
                                            </div>
                                        </div>
                                        
                                        
                                      
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Update</button>
                                            </div>
                                        </div>
                                        
                                       
                                    </form>
                                    
                                     	<%
                                           }
                                     		 
                                           }
                                           catch(Exception e)
                                           {
                                        	   e.printStackTrace();
                                           }
                                          
                                        %>
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