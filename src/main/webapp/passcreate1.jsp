<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.connection.connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Bus-System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .id-card {
            width: 700px; /* Increased width */
            background-color: #fff;
            border: 2px solid #000;
            border-radius: 10px;
            padding: 20px;
            margin: 20px auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #c4c2e3;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            background-color: blue;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .header h1 {
            font-size: 24px;
            margin: 0;
            color: white;
            padding: 10px 0;
        }

        .photo {
            width: 150px; /* Increased photo size */
            height: 150px; /* Increased photo size */
            margin: 0 auto 10px;
            overflow: hidden;
        }

        .photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .info {
            text-align: center;
        }

        .name {
            font-weight: bold;
            font-size: 20px; /* Slightly larger font */
            margin-bottom: 5px;
        }

        .details {
            margin-bottom: 10px;
        }

        .signature {
            width: 150px;
            margin: 0 auto;
                
        }

        .signature img {
            width: 64%;
            height: 58px;
           
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: white;
        }

        .signature-container {
            display: flex;
            align-items: center;
        }

        .date-section {
            font-size: 12px;
            margin-right: 10px;
            margin-top: 117px;
        }

        .signature {
            display: flex;
            flex-direction: column;
            margin-top: 48px;
            /* margin-left: 89px; */
             margin-left: 385px;
        }

        .signature-label {
            text-align: center;
            margin-top: 5px;
            font-style: italic;
        }

        .button-wrapper {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <%
        HttpSession session2 = request.getSession();
        String s1 = (String) session.getAttribute("username");
        int id11 = (int) session.getAttribute("id");
    %>

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
        <a href="index.html" class="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5">
            <h2 class="mb-2 text-white">Bus-system</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="StudentDashboard.jsp" class="nav-item nav-link">Dashboard</a>
                <a href="services.jsp" class="nav-item nav-link active">Services</a>
                <a href="contact.jsp" class="nav-item nav-link text-info"><%=s1 %></a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Pass</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Services</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Service Start -->
    <%
        try {
            int id = Integer.parseInt(request.getParameter("s_id"));
            bus_model b = new bus_model(connection.getconnection());
            List<pass_entity> al = b.pass_id(id);

            for (pass_entity s : al) {
                byte[] imageData = s.getPic();
                String base64Image = imageData != null ? Base64.getEncoder().encodeToString(imageData) : "";
    %>
    <input type="hidden" value="<%=s.getId() %>" name="id" id="id" />

    <div class="id-card">
        <div class="header">
            <h1>D.Y. Patil, Talsande</h1>
        </div>
        <div class="photo">
            <img src="data:image/*;base64, <%=base64Image %>" alt="profile pic">
        </div>
        <div class="info">
            <div class="name"><%=s.getStud_name() %></div>
            <div class="details">
                <p>Address: <%=s.getAddress() %></p>
                <p>Phone: <%=s.getPhone() %></p>
                <p>Department: <%=s.getDepartment() %></p> 
                <p>Course: <%=s.getCourse() %></p> 
                <p>Bus Name: <%=s.getBus_name() %></p> 
                <p>Bus No: <%=s.getBus_no() %></p> 
                <p>Installment: <%=s.getInstall() %></p> 
                 <p>Seat No: <%=s.getSeatNo() %></p> 
            </div>
            <p>UId: <b><%=s.getU_id() %></b></p>
        </div>
        <div class="signature-container">
            <div class="date-section">Date: <%=s.getDate() %></div>
            <div class="signature">
                <img src="img/sign.png" alt="Signature of Principal">
                <div class="signature-label">Principal's Signature</div>
            </div>
        </div>
        <div class="footer">Valid until: <%=s.getEnd_date() %></div>
    </div>
    <div class="button-wrapper">
        <a href="#" class="btn btn-dark" onclick="downloadIDCard()">Download ID Card</a>
    </div>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <!-- Service End -->

    <!-- Footer Start -->
    <%@include file="component/footer_index.jsp" %>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <script type="text/javascript">
        function downloadIDCard() {
            const { jsPDF } = window.jspdf;
            var idCardHTML = document.querySelector('.id-card');
            let doc = new jsPDF('l', 'mm', [1500, 1400]);
            doc.html(idCardHTML, {
                callback: function (doc) {
                    doc.save("id_card.pdf");
                },
                x: 12,
                y: 12
            });
        }
    </script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
