<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    

        <link href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" rel="stylesheet">
        
        
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
        
    

<style type="text/css">
*{
margin: 0;
padding: 0
}
body
{
overflow-x: hidden;
background: #000000
}
#bg-div
{
margin: 0;
margin-top:100px;
margin-bottom:100px
}
#border-btm
{
padding-bottom: 20px;
margin-bottom: 0px;
box-shadow: 0px 35px 2px -35px lightgray
}
#test{
margin-top: 0px;
margin-bottom: 40px;
border: 1px solid #FFE082;
border-radius: 0.25rem;
width: 60px;height: 30px;
background-color: #FFECB3
}
.active1
{
color: #00C853 !important;
font-weight: bold
}
.bar4
{
width: 35px;
height: 5px;
background-color: #ffffff;
margin: 6px 0}.list-group .tabs{color: #000000
}
#menu-toggle
{
height: 50px
}
#new-label
{
padding: 2px;
font-size: 10px;
font-weight: bold;
background-color: red;
color: #ffffff;
border-radius: 5px;
margin-left: 5px
}
#sidebar-wrapper
{
min-height: 100vh;
margin-left: -15rem;
-webkit-transition: margin .25s ease-out;
-moz-transition: margin .25s ease-out;
-o-transition: margin .25s ease-out;
transition: margin .25s ease-out
}
#sidebar-wrapper .sidebar-heading
{
padding: 0.875rem 1.25rem;
font-size: 1.2rem
}
#sidebar-wrapper .list-group
{
width: 15rem
}
#page-content-wrapper
{
min-width: 100vw;
padding-left: 20px;
padding-right: 20px
}
#wrapper.toggled #sidebar-wrapper
{
margin-left: 0
}
.list-group-item.active
{
z-index: 2;
color: #fff;
background-color: #fff !important;
border-color: #fff !important
}
@media (min-width: 768px)
{
#sidebar-wrapper{margin-left: 0}#page-content-wrapper{
min-width: 0;width: 100%
}
#wrapper.toggled #sidebar-wrapper
{
margin-left: -15rem;
display: none
}}.card0{
margin-top: 10px;margin-bottom: 10px
}
.top-highlight{
color: #00C853;font-weight: bold;font-size: 20px
}.form-card input, .form-card textarea{padding: 10px 15px 5px 15px;border: none;border: 1px solid lightgrey;border-radius: 6px;margin-bottom: 25px;margin-top: 2px;width: 100%;box-sizing: border-box;font-family: arial;color: #2C3E50;font-size: 14px;letter-spacing: 1px}.form-card input:focus, .form-card textarea:focus{-moz-box-shadow: 0px 0px 0px 1.5px skyblue !important;-webkit-box-shadow: 0px 0px 0px 1.5px skyblue !important;box-shadow: 0px 0px 0px 1.5px skyblue !important;font-weight: bold;border: 1px solid skyblue;outline-width: 0}input.btn-success{height: 50px;color: #ffffff;opacity: 0.9}#below-btn a{font-weight: bold;color: #000000}.input-group{position:relative;width:100%;overflow:hidden}.input-group input{position:relative;height:90px;margin-left: 1px;margin-right: 1px;border-radius:6px;padding-top: 30px;padding-left: 25px}.input-group label{position:absolute;height: 24px;background: none;border-radius: 6px;line-height: 48px;font-size: 15px;color: gray;width:100%;font-weight:100;padding-left: 25px}input:focus + label{color: #1E88E5}#qr{margin-bottom: 150px;margin-top: 50px
}

</style>
</head>
<body>

<!-- <form action="payment_servlet" method="post" enctype="multipart/form-data"> -->

<div class="container-fluid px-0" id="bg-div">
    <div class="row justify-content-center">
        <div class="col-lg-9 col-12">
            <div class="card card0">
                <div class="d-flex" id="wrapper">
                    <!-- Sidebar -->
                    <div class="bg-light border-right" id="sidebar-wrapper">
                        <div class="sidebar-heading pt-5 pb-4"><strong>PAY WITH</strong></div>
                        <div class="list-group list-group-flush"> <a data-toggle="tab" href="#menu1" id="tab1" class="tabs list-group-item bg-light">
                              <!--   <div class="list-div my-2">
                                    <div class="fa fa-home"></div> &nbsp;&nbsp; Bank
                                </div>
                            </a> <a data-toggle="tab" href="#menu2" id="tab2" class="tabs list-group-item active1">
                                <div class="list-div my-2">
                                    <div class="fa fa-credit-card"></div> &nbsp;&nbsp; Card
                                </div> -->
                            <!-- </a>  --><a data-toggle="tab" href="#menu3" id="tab3" class="tabs list-group-item bg-light ">
                                <div class="list-div my-2">
                                    <div class="fa fa-qrcode"></div> &nbsp;&nbsp;&nbsp;QR Scan <span id="new-label">NEW</span>
                                </div>
                            </a> </div>
                    </div> <!-- Page Content -->
                    <div id="page-content-wrapper">
                        <div class="row pt-3" id="border-btm">
                            <div class="col-4"> <button class="btn btn-success mt-4 ml-3 mb-3" id="menu-toggle">
                                    <div class="bar4"></div>
                                    <div class="bar4"></div>
                                    <div class="bar4"></div>
                                </button> </div>
                            <div class="col-8">
                                <div class="row justify-content-right">
                                   <!--  <div class="col-12">
                                        <p class="mb-0 mr-4 mt-4 text-right">customer@email.com</p>
                                    </div> -->
                                </div>
                                <div class="row justify-content-right">
                                    <!-- <div class="col-12">
                                        <p class="mb-0 mr-4 text-right">Pay <span class="top-highlight">$ 100</span> </p>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="text-center" id="test">Pay</div>
                        </div>
                        
                      <!--   <div class="tab-content">
                            <div id="menu1" class="tab-pane">
                                <div class="row justify-content-center">
                                    <div class="col-11">
                                        <div class="form-card">
                                            <h3 class="mt-0 mb-4 text-center">Enter bank details to pay</h3>
                                            <form onsubmit="event.preventDefault()">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="input-group"> <input type="text" id="bk_nm" placeholder="BOI Bank" required="required"> <label>BANK NAME</label> </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="input-group"> <input type="text" name="ben_nm" id="ben-nm" placeholder="John Smith" required="required"> <label>BENEFICIARY NAME</label> </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="input-group"> <input type="text" name="scode" placeholder="ABC" class="placeicon" minlength="8" maxlength="11" required="required"> <label>SWIFT CODE</label> </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12"> <a href="thanku.jsp"><input type="button" value="Pay" class="btn btn-success placeicon"> </a> </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <p class="text-center mb-5" id="below-btn"><a href="#">Use a test card</a></p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                           <!--  <div id="menu2" class="tab-pane in active">
                                <div class="row justify-content-center">
                                    <div class="col-11">
                                        <div class="form-card">
                                            <h3 class="mt-0 mb-4 text-center">Enter your card details to pay</h3>
                                            <form onsubmit="event.preventDefault()">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="input-group"> <input type="text" id="cr_no" placeholder="0000 0000 0000 0000" minlength="19" maxlength="19" required="required"> <label>CARD NUMBER</label> </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="input-group"> <input type="text" name="exp" id="exp" placeholder="MM/YY" minlength="5" maxlength="5" required="required"> <label>CARD EXPIRY</label> </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="input-group"> <input type="password" name="cvcpwd" placeholder="&#9679;&#9679;&#9679;" class="placeicon" minlength="3" required="required" maxlength="3"> <label>CVV</label> </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12"> <a href="thanku.jsp"><input type="button" value="Pay " class="btn btn-success placeicon"></a>  </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <p class="text-center mb-5" id="below-btn"><a href="#">Use a test card</a></p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div id="menu3" class="tab-pane">
                                <div class="row justify-content-center">
                                    <div class="col-11">
                                        <h3 class="mt-0 mb-4 text-center">Scan the QR code to pay</h3>
                                        <div class="row justify-content-center">
<!--                                             <div id="qr"> <img src="https://i.imgur.com/DD4Npfw.jpg" width="200px" height="200px"> </div>
 -->                                            <div id="qr"> <img src="img/paymentImg/paymentImg.jpeg" width="200px" height="200px"> </div>
                                            
                                        </div>
                                        
                                        
                                       
                
                                        
                                         <div class="row text-center">
                                               <div class="col-md-12"> 
                                               <a href="thanku.jsp">  <input type="submit" value="Done" class="btn btn-success placeicon">  </a>
                                               </div>
                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- </form> -->

<script type="text/javascript">
$(document).ready(function(){
    //Menu Toggle Script
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    // For highlighting activated tabs
   /*  $("#tab1").click(function () {
        $(".tabs").removeClass("active1");
        $(".tabs").addClass("bg-light"); 
        $("#tab1").addClass("active1");
        $("#tab1").removeClass("bg-light");
    });
    $("#tab2").click(function () {
        $(".tabs").removeClass("active1");
        $(".tabs").addClass("bg-light");
        $("#tab2").addClass("active1");
        $("#tab2").removeClass("bg-light");
    }); */
    $("#tab3").click(function () {
        $(".tabs").removeClass("active1");
        $(".tabs").addClass("bg-light");
        $("#tab3").addClass("active1");
        $("#tab3").removeClass("bg-light");
    });
})
</script>
</body>
</html>