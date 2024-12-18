<%@page import="com.connection.connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus-System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>	
									<div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
							        <thead>
							         <th scope="col"> Sr.No</th>
							          <th scope="col"> Student-Name</th>
							          <th scope="col">Recipet</th>
							        
							        
							        </thead>
  <%
						              try{
						                        bus_model b=new bus_model(connection.getconnection());
						                        List<route_entity> al=b.routeform();
						                        for(route_entity s:al) {
						                        	
						                        	/* byte[] imagedata = s.getPic();
						                        	String base64Image =imagedata !=null ? Base64.getEncoder().encodeToString(imagedata): " ";  */
						                        	
						                        	byte[] imagedata1 = s.getPic1();
						                        	String base64Image1 =imagedata1 !=null ? Base64.getEncoder().encodeToString(imagedata1): " "; 
						                %>
                                            <tr>
                                          <td><%=s.getId()%></td>     
 										<td><%=s.getName() %></td>
 				  						<td><img src="data:image/*;base64, <%=base64Image1%>" alt="" class="img-d img-fluid" style="height: 500px;width:500px"></td>
											      
<!--                                                    <td><a href="pass.jsp" class="btn btn-primary text-primary">Pass</a></td>
 -->                                            </tr>
                                       <%
                                        
                                            }}catch(Exception e)
                                        {
                                            	e.printStackTrace();
                                        }
                                       %>
                                       
                                       </table>
                                       </div>
</body>
</html>