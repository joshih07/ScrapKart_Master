<%-- 
    Document   : RequestInfo
    Created on : 27 Feb, 2023, 10:13:29 AM
    Author     : HIMANSHU JOSHI
--%>

<%@page import="scrapKart.model.scrapKartModel"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="scrapKart.dbutil.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="scrapKart.pojo.PickUpBoy"%>
<%@page import="scrapKart.pojo.Material"%>
<%@page import="scrapKart.pojo.Request"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Request Information</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/register.css">
     
    </head>
    <body style ="background-color: #003F2A;">
     <div class="row myrow" >
            <div class="col-sm-2"><a href="logout.jsp"><img src="images/logo.jpg" class="img-fluid"></a></div>
            <div class="col-sm-10 myheader">
                <span> <a href="#downfooter">Contact</a></span>
                <span><a href="www.google.com">Price List</a></span>
                <span><a onclick="alert('Please Login first!');">Request PickUp</a></span>
                <span><a href="login.jsp">Login/Register</a></span>
            </div>
        </div>
        <div>
            <%-- <ul>
                <li id="logo"><a href="logout.jsp"><img src="images/logo.jpg" alt="ScrapKart" height="60" width="100"></a></li>
                <li><a href="www.google.com">Contact</a></li>
                <li><a href="request.html">Request PickUp</a></li>
                <li><a href="www.google.com">Price List</a></li>
                <li><a href="www.google.com">Login/Register</a></li>
            </ul> --%>
            <%  
                String request_id=request.getParameter("req_id");
                String user=session.getAttribute("user_mail").toString();
                Request req=new Request();
                PickUpBoy pkb=new PickUpBoy();
                Float total_weight=0.0f,total_cost=0.0f;
                ArrayList<Material> material_List=new ArrayList<Material>();
               
                try
                { 
                    req=scrapKartModel.getRequestDetails(request_id);
                    pkb=scrapKartModel.getPickUpBoyDetails(request_id);
                    material_List=scrapKartModel.getMaterialDetails(request_id);
                }
                catch(SQLException ex)
                {
                    ex.printStackTrace();
                }
                
             %>
            
            <div class="container">
                <div class="row">
                    <div class="col-sm-5" style="text-align:center;  background-color:rgba(255, 255, 255, 0.945); margin-top:40px ;" >
                        <h2 class="heading">Request Information</h2>
                        <hr>
                        
                            <div class="col-sm-6"  style="text-align:left;">
                                <label>Requested Date :</label><br>
                                <label>Scheduled Date :</label><br>
                               
                            
                                <label>Address of PickUp</label><br><br><br>
                                <label>Assigned PickUp Boy:</label><br><br>
                                <label>Assigned PickUp Boy Contact information:</label><br>
                            </div>

                        
                            <div class="col-sm-6"  style="text-align:left">
                                    
                                <label style="color: black;"><%= req.getReq_date()%></label><br>
                                <label style="color: black;"><%= req.getSchd_date()%></label><br>
                                <!--<label style="color: black;"><></label><br>-->
                                <label style="color: black;"><%= req.getAddress()%></label><br><br>
                                <label style="color: black;"><%= pkb.getName()%></label><br><br>
                                <label style="color: black;"><%= pkb.getContact_no()%></label><br>
    
                            </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-6" style="text-align:center; background-color:rgba(255, 255, 255, 0.945);margin-top:40px ;">
                        <h1 class="heading"> Scrap Information</h1>
                        <hr>
                            <div class="col-sm-12 ">
                                <table style="text-align:center">
                                    <tr>
                                        <th>Scrap Item</th>
                                        <th>Rate(Rs per kg)</th>
                                        <th>Weight</th>
                                        <th>Cost</th> 
                                    </tr>
                                    <%for( Material mt: material_List )
                                    {
                                        total_weight+= mt.getWeight();
                                        total_cost+= mt.getCost();
                                     %>
                                    <tr>
                                        <td><%= mt.getScrapItem()%></td>
                                        <td><%= mt.getRate()%></td>
                                        <td><%= mt.getWeight()%></td>
                                        <td><%= mt.getCost()%></td>
                                    </tr>
                                    <%}
                                      %>
                                
                                </table><br>
                               
                                <p style="text-align: left;font-size: 30px;">Total weight :<%= total_weight %> kgs</p>
                                <p style="text-align: left;font-size: 30px;">Total Cost : Rs <%= total_cost %></p><br>
                                 
           
                            </div>
                    </div>
                       
                </div>
                  
                           <br>  <a href="requestForm.jsp"><button class="btn btn-primary" style="padding-left: 30px;padding-right: 30px;">Back</button></a>
                </div>
                <br><br><br>
        </div>
       <div class="container-fluid myfooter" id="downfooter" style="height: 15vw;">
        
            <div class="row okrow">
                <div class="col-sm-4 gogreen" style="padding-left:70px;padding-top:1.7" >
                    <img src="images/green.png" height="70" width="80">Go Green
                </div>

                <div class="col-sm-4 " id="tandc" style="padding-top:1vw;text-align: center;" >
                    About Us
                    <p class="text-black-50">Today, with a rise in health awareness, lifestyle, convenience (door step services), pollution, land fillings and many more reasons allow us to think out of the box. <br><span>This is ScrapKart!</span></p>
                </div>

                <div class="col-sm-4" id="contact" style="text-align: center;padding-top:1vw;">
                  Contact us
                  <p> 16-9-406/A/80, Ground Floor Vijay Nagar,<br>New Market,Mandsaur 435612</p>
                  <p> Phone: 7898781539</p>
                  <p> Email: himanshujoshi0703@gmail.com</p>
                </div>
            </div>    
        </div>
    </body>
</html>

