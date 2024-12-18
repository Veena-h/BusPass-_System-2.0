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
    <link href="dashboard_assest/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="dashboard_assest/css/style.css" rel="stylesheet">
    
     <style >
   body{
   
     background-image: url("img/images/slider-bg3.jpg");
    background-repeat: no-repeat;
     background-size:cover
   }
   </style>

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
                                <h4 class="card-title">Registered-User</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                                <th>First-Name</th>
                                                <th>Last-Name</th>
                                                <th>address</th>
                                                <th>Phone-no</th>
                                                <th>Gender</th>
                                                <th>Date-of-Birth</th>
                                           
                                                <th>Department</th>
                                                <th>Course</th>
                                                <th>PRN_NO</th>
                                                <th>Email</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        <%
                                        
                                           try{
                                           bus_model b=new bus_model(connection.getconnection());
                                            List<studentRegistration_rentity> al=b.select();
                                            for(studentRegistration_rentity s:al)
                                            {
                                           
                                        
                                        %>
                                            <tr>
                                                <td><%=s.getId() %></td>
                                                <td><%=s.getFirst_name() %> <%=s.getLast_name() %></td>
                                                <td><%=s.getAddress() %></td>
                                                <td><%=s.getPhone() %></td>
                                                <td><%=s.getGender() %></td>
                                                <td><%=s.getDOB() %></td>
                                              
                                                <td><%=s.getDept() %></td>
                                                <td><%=s.getCourse() %></td>
                                                 <td><%=s.getPrn_no()%></td>
                                                <td><%=s.getEmail() %></td>
                                                
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