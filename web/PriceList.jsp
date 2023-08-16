<%-- 
    Document   : PriceList.jsp
    Created on : 10 Mar, 2023 5:22:11 PM
    Author     : HIMANSHU JOSHI
--%>

<%@page import="scrapKart.model.scrapKartModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PriceList</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/PriceList.css">
     
    </head>
    <body>
        <%-- <div>
            <ul>
                <li id="logo"><img src="images/logo.jpg" alt="ScrapKart" height="60" width="100"></li>
                <li><a href="www.google.com">Contact</a></li>
                <li><a href="request.html">Request PickUp</a></li>
                <li><a href="www.google.com">Price List</a></li>
                <li><a href="www.google.com">Login/Register</a></li>
            </ul>           
        </div> --%>
         <div class="row myrow" >
            <div class="col-sm-2"><a href="logout.jsp"><img src="images/logo.jpg" class="img-fluid"></a></div>
            <div class="col-sm-10 myheader">
                <span> <a href="#downfooter">Contact</a></span>
                <span><a>Price List</a></span>
                <span><a onclick="alert('Please Login first!');">Request PickUp</a></span>
                <span><a href="login.jsp">Login/Register</a></span>
            </div>
        </div>
        <br>
        <br>
        <!-- <hr> -->
        <div class="container-fluid" >
            <div class="container" style="background-color: white; height: 1200px;">
                    <h3 style="text-align: center;">Rates of Scrap</h3>
                    <div class="row">
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/aluminium.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Aluminium</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Aluminium")%> per kg</h4>
                            
                        </div>
                        <div class=" col-sm-3 scrapbox" >

                            <img src="images/pricelist/books.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Books</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"> <%= scrapKartModel.getPrice("Books")%> per kg </h4>
                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/brass.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Brass</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Brass")%> per kg</h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/carton.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Carton House</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Carton_House")%> per kg</h4>

                        </div>

                    </div>
                    <!-- row 1 -->

                    <div class="row">
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/carton.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Carton Shop</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Carton_Shop")%> per kg</h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/ewaste.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">E-Waste</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("E-Waste")%> per kg </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/fiber.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Fiber</h4>
                            <h4  style="text-align: center; color:black;margin-top: 0px; font-weight: bold;"><%= scrapKartModel.getPrice("Fiber")%> per kg</h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/hardplastic.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Hard Plastic</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Hard Plastic")%> per kg </h4>

                        </div>

                    </div>
                    <!-- row 2 -->
                    <div class="row">
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/iron.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Iron</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Iron")%> per kg</h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/newspaper.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Newspaper</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Newspapers")%> per kg </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/oilcovers.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h5 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Oil,WaterCovers</h5>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Water/oilcovers")%> per kg </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/paperwaste.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Paper Waste</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Paperwaste")%> per kg </h4>

                        </div>

                    </div>
                    <!-- row 3 -->
                    <div class="row">
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/polyethene.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Polyethene</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Polyethene")%> per kg </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/steel.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Steel</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Steel")%> per kg </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/tin.png" style="margin-left: -30px; margin-bottom: 0px; margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Tin</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Tin")%> per kg  </h4>

                        </div>
                        <div class=" col-sm-3 scrapbox" >
                            <img src="images/pricelist/tyre.png" style="margin-left: -30px; margin-bottom: 0px;margin-top: 10px;" height="100" width="100">
                            <br>
                            <h4 style="text-align: center; color:green;margin-top: 10px; font-weight: bold;">Tyre</h4>
                            <h4  style="text-align: center; color:black;margin-top: 10px; font-weight: bold;"><%= scrapKartModel.getPrice("Tyre")%> per kg </h4>

                        </div>

                    </div>
                    <!-- row 4 -->

                    <br><br>
                    <button type="button" class="btn btn-primary" style="margin-left: 35%; font-size: x-large;" onclick="location.href='Calculator/calculator.html'"> Calculate Estimate Price of your Scrap</button>
            </div>
            


        </div>
        <br>
         <div class="container-fluid myfooter" style="height: 15vw;">
        
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

