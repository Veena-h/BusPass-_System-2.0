<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.connection.connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus-System</title>
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

   
<form action="route_form_servlet" method="post"  enctype="multipart/form-data">
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
				<%
				  try{
				    	   
					  String MainbusNo=request.getParameter("MainbusNo");

					  String stopno=request.getParameter("stopno");
					  int id=Integer.parseInt(request.getParameter("stopid"));
				      bus_model b=new bus_model(connection.getconnection());
				      
			           List<BusAdd_entity> al1=b.showByMainbusNo(MainbusNo);
			           
				       List<BusAdd_entity> al=b.showbyid(id);
				       
				       for(BusAdd_entity s:al)
				       {
				    	   
								       for(BusAdd_entity s11:al1)
								       { 
				    	   
				      
				   
				   %> 
                <div class="row">
                
                
                <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg"  name="bus_no" value=<%=s.getMainBusNo() %> readonly="readonly"/>
                      <label class="form-label" for="form3Example1m">Bus-No</label>
                    </div>
                  </div>
                  
                  
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="bus_name" value= "<%=s.getMainBusName() %>" readonly="readonly"/>
                      <label class="form-label" for="form3Example1n">Bus-Name</label>
                    </div>
                  </div>
                  
                  
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg"  name="stop_no" value=<%=s.getStop_no() %> readonly="readonly"/>
                      <label class="form-label" for="form3Example1m">Stop-No</label>
                    </div>
                  </div>
                  
                  
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <input type="text" id="form3Example1n" class="form-control form-control-lg" name="stop_name" value="<%=s.getStop_name() %>" readonly="readonly"/>
                      <label class="form-label" for="form3Example1n">Stop-Name</label>
                    </div>
                  </div>
                  
                  
                </div>
                
                
				
				<div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="dname" value="<%=s.getBus_fee() %>" readonly="readonly"/>
                  <label class="form-label" for="form3Example8">Driver-Name</label>
                </div>
                
                
                
               					    	   
                <div class="form-outline mb-4">
                  <input type="hidden" id="form3Example8" class="form-control form-control-lg" name="seats" value="<%=s11.getSeats()%>" readonly="readonly"/>
              <!--   <label class="form-label" for="form3Example8">seats</label> -->
                </div>
                
                
               
  
  
  
  
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="fees" value= "<%= s.getEvening_time() %>" readonly="readonly"/>
                  <label class="form-label" for="form3Example8">Fees</label>
                </div>
                
                
                <%
                
							break;	       } break;
       }}catch(Exception e)
   {
       	e.printStackTrace();
   }
  %>
  
  
  				<%
				  try{
					  
					  int id=Integer.parseInt(request.getParameter("id"));
				      bus_model b=new bus_model(connection.getconnection());
				       List<studentRegistration_rentity> al=b.studentRegisterById(id);
				       for(studentRegistration_rentity s:al)
				       {
				      
				   
				   %> 
  
  
  
                  <input type="hidden" id="form3Example8" class="form-control form-control-lg" name="s_id" required="required"   value=<%=id%>  />
                  
     
				<div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="name" required="required"   value="<%=s.getFirst_name() %><%=s.getLast_name() %>"   />
                  <label class="form-label" for="form3Example8">Name</label>
                </div>
                

                <div class="form-outline mb-4">
                  <input type="number" id="form3Example8" class="form-control form-control-lg" name="phone" required="required" value=<%=s.getPhone() %> />
                  <label class="form-label" for="form3Example8">Phone-no</label>
                </div>

                
                

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example9" class="form-control form-control-lg"  name="address" required="required"  value="<%=s.getAddress()%>"  />
                  <label class="form-label" for="form3Example9">Address</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example90" class="form-control form-control-lg" name="dept" required="required" value="<%=s.getDept()%> "   />
                  <label class="form-label" for="form3Example90">Department</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg"  name="course" required="required"  value="<%=s.getCourse()%>" />
                  <label class="form-label" for="form3Example99">Course</label>
                  
                  </div>
                    
                    
                    <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg"  name="prn_no" required="required"  value=<%= s.getPrn_no() %>  />
                  <label class="form-label" for="form3Example99">PRN NO</label>
                  
                  </div>
                  
                
                <%
				
       }}catch(Exception e)
   {
       	e.printStackTrace();
   }
  %>
  
  
  					<!-- *** duration start *** -->
  					<div class="form-outline mb-4">
  					<label class="form-label">Fees-Installment</label>
                   
                  <div class="form-check">
                    <input type="radio" class="form-check-input" name="feespaid" value="Half"  >
                    <label class="form-check-label" for="online">Half</label>
                  </div>
                  <div class="form-check">
                    <input type="radio" class="form-check-input" name="feespaid" value="Full"  >
                    <label class="form-check-label" for="offline">Full</label>
                  </div>
                  </div>
                
  					<!-- *** duration ends *** -->
  
                
                 <div class="form-outline mb-4">
                  <input type="file" id="form3Example99" class="form-control form-control-lg"  name="pic" required="required"/>
                  <label class="form-label" for="form3Example99">Identity-Photo</label>
                </div>
                
                 <div class="form-outline mb-4">
                  <input type="file" id="form3Example99" class="form-control form-control-lg"  name="pic1" />
                  <label class="form-label" for="form3Example99">Receipt</label>
                   <label class="form-label text-danger" for="form3Example97">(only if You paid offline)</label>
                </div>
                



				<!-- payment option -->
				   <div class="form-outline mb-4">
				   
                  <label class="form-label">Payment Method</label>
                   <div class="form-check">
                    <input type="radio" class="form-check-input" name="paymentMethod" value="none" onclick="toggleNextButton()"  checked="checked">
                    <label class="form-check-label" for="offline">None</label>
                  </div>
                  <div class="form-check">
                    <input type="radio" class="form-check-input" name="paymentMethod" value="online" onclick="toggleNextButton()" >
                    <label class="form-check-label" for="online">Online</label>
                  </div>
                  <div class="form-check">
                    <input type="radio" class="form-check-input" name="paymentMethod" value="offline" onclick="toggleNextButton()"  >
                    <label class="form-check-label" for="offline">Offline</label>
                  </div>
                  
                  
                  
                </div>
              
                

                <div class="d-flex justify-content-end pt-3">
                
                 <button type="submit" class="btn btn-info btn-lg ms-2" id="nextButton"  name="action" value="next">Next</button>
                  <button type="submit" class="btn btn-success btn-lg ms-2" id="sub" name="action" value="submit">Submit</button>
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

<script type="text/javascript">
function toggleNextButton() {
    var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
    var nextButton = document.getElementById('nextButton');
    var submit = document.getElementById('sub');
    var receiptField = document.getElementById('form3Example99'); 
    
    
    if (paymentMethod === 'offline') 
    {
    	  nextButton.style.display = 'none';
          submit.style.display = 'inline-block';
          receiptField.required = true;
          
    } else if (paymentMethod === 'online')
    {
    	 nextButton.style.display = 'inline-block';
         submit.style.display = 'none';
         receiptField.required = false;
    }else
    	{
    	 nextButton.style.display = 'none';
         submit.style.display = 'none';

    	}
}
</script>

</body>
</html>