<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus-System</title>
</head>
<style type="text/css">
body{
      
          background-image: linear-gradient(rgb(128, 128, 199),rgb(185, 76, 76),rgb(221, 221, 120));
          background-repeat: no-repeat;
          background-size: 5000px 5000px;
        }

</style>
<body>


	<center>
	
 	 <h1 id="h1" style="color:rgb(210, 183, 149); background-color: black">  </h1>
 	 
   </center>
   
   
	<script type="text/javascript">
	
	 document.getElementById("h1").innerHTML="Thank u for Filling the bus-Form "+ "<br><br>" +"We will contact u soon "+"<br><br>"+"if you don't get Pass in Pass-section in 2 days " +"<br><br>"+"Then Plz visit trasport department";
	 
/* 	alert("thank u for Filling the bus-Form ,we will contact u soon ,if more than 2 days if you dont any get respone then visit trasport department");
*/
 
		setTimeout(function() {
		    window.location.href = "services.jsp";
		}, 4000); 


	</script>
</body>
</html>