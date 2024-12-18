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
                                <h4 class="card-title">Student-forms</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                            
                                            
                                            	<th scope="col">Bus-No</th> 
											     <th scope="col">Bus-Name</th>
                                                <th scope="col">Stop-No</th> 
											     <th scope="col">Stop-Name</th>
											    
											      
											       <th scope="col">driver-Name</th> 
											      <th scope="col">Student-Name</th>
											      <th scope="col">Address</th>
											      <th scope="col">Phone</th>
											      <th scope="col">Department</th>
											      <th scope="col">Course</th>
											      <th scope="col">PRN-No</th>
											      <th scope="col">Fees</th>
											      <th scope="col">Fees-Installment</th>
											      
											      <th scope="col">Payment-receipt(offline)</th>
											      <th scope="col">Picture</th>
											      
											      <th scope="col">payment-Method</th>
											      	
											      
											      <th scope="col">Pass-response</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        <%
						                    try{
						                        bus_model b=new bus_model(connection.getconnection());
						                        List<route_entity> al=b.routeform();
						                       
						                        
						                        
							                        
						                       
						                        for(route_entity s:al) 
						                        {
						                        	
						                        	
						                        	byte[] imagedata = s.getPic();
						                        	String base64Image =imagedata !=null ? Base64.getEncoder().encodeToString(imagedata): " "; 
						                        	
						                        	byte[] imagedata1 = s.getPic1();
						                        	String base64Image1 =imagedata1 !=null ? Base64.getEncoder().encodeToString(imagedata1): " "; 
						                        	
						                        	
						                        	
						                            
						                        	 
						                        		 
						                        	
						                        	
						                        	
						                %>
                                            <tr>
                                             	<td><%=s.getBus_no() %></td>
                                             	 <td><%=s.getBus_name() %></td>
                                                <td><%=s.getStop_no() %></td>
											      <td><%=s.getStop_name() %></td>
											     <td><%=s.getDriver_name() %></td>
											      <td><%=s.getName().trim() %></td>
											      <td><%=s.getAddress()%> </td>
											      <td><%=s.getPhone() %></td>
											      <td><%=s.getDept() %></td>
											      <td><%=s.getCourse() %></td>
											       <td><%=s.getPrn_no() %></td>
											        <td><%=s.getFees() %></td>
											         <td><%=s.getFeespaid() %></td>
											       <td><%=s.getPaymentMethod() %></td>
											      <td><img src="data:image/*;base64, <%=base64Image %>" alt="PictureNotFound" class="img-d img-fluid" style="height: 120px;width:120px"></td>
												  <td><a href="viewImage.jsp?id=<%=s.getId()%>"><img src="data:image/*;base64, <%=base64Image1%>" alt="OnlinePaid" class="img-d img-fluid" style="height: 120px;width:80px"></a></td>
											     
											       
                                                   <td><a href="pass.jsp?id=<%=s.getId() %>" class="btn btn-primary">Pass</a></td>
                                                    <td><a href="Done_servlet?id=<%=s.getId() %>" class="btn btn-info">Done</a></td>
                                                    <td><a href="Done_servlet?id=<%=s.getId() %>" class="btn btn-danger">Reject</a></td>
                                                   
                                                    
                                            </tr>
                                       <%
						                     	}    	   
						                        
                                            }catch(Exception e)
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