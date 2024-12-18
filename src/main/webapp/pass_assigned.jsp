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
    <link rel="icon" type="image/png" sizes="16x16" href="dashboard_assest/images/bus-logo.jpeg">
    <!-- Custom Stylesheet -->
    <link href="dashboard_assest/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
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
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title bg-success p-2 text-center">Pass-Assigned</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                                
                                                
                                                <th scope="col">Bus-No</th> 
                                                <th scope="col">Bus-Name</th>
                                                <th scope="col">stop-Name</th>
											     <th scope="col">Student-Name</th>
											     <th scope="col">Student-Dept</th>
											     <th scope="col">Student-course</th>
											     <th scope="col">Unique-Id</th>
											     <th scope="col">Start-date</th>
											     <th scope="col">Pass-expire</th>
											     <th scope="col">Fees-paid</th>
											     <th scope="col">Status</th>
											     <th scope="col">Issued-date</th>
											    
											      
											     
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        <%
						                    try{
						                        bus_model b=new bus_model(connection.getconnection());
						                        
						                        List<pass_entity> pp=b.pass_response();
						                        for(pass_entity s:pp) {
						                        	
						                        	
						                        	
						                        	
						                %>
                                            <tr>
                                                <td><%=s.getBus_no() %></td>
                                                <td><%=s.getBus_name() %></td>
                                                <td><%=s.getStop_name() %></td>
											      <td><%=s.getStud_name() %></td>
											      <td><%=s.getDepartment() %></td>
											      <td><%=s.getCourse() %></td>
											      
											     <td><%=s.getU_id() %></td>
											      <td><%=s.getStart_date() %></td>
											      <td><%=s.getEnd_date()%> </td>
											      <td><%=s.getInstall() %></td>
											      <td><%=s.getStatus() %></td>
											      <td><%=s.getDate() %></td>
											      
											     
											     
                                               <td><a href="cancel_pass?id=<%=s.getId() %>" class="btn btn-primary">Cancel</a></td> 
                                            </tr>
                                       <%
						                        	
                                            }}catch(Exception e)
                                        {
                                            	e.printStackTrace();
                                        }
                                       %>
                                        
                                    </table>
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

    
    
    
    
    

    <script src="dashboard_assest/plugins/tables/js/jquery.dataTables.min.js"></script>
    <script src="dashboard_assest/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="dashboard_assest/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>

</body>

</html>