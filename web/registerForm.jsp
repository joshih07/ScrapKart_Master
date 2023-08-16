<%-- 
    Document   : registerForm
    Created on : 23 Dec, 2022, 4:21:20 PM
    Author     :HIMANSHU JOSHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>ScrapKart Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/register.css">
       
    </head>
    <body>
        <%-- <div>
            <ul>
                <li id="logo"><a href="index.html"><img src="images/logo.jpg" alt="ScrapKart" height="60" width="100"></a></li>
                <li><a href="www.google.com">Contact</a></li>
                <li><a href="www.google.com">Request PickUp</a></li>
                <li><a href="www.google.com">Price List</a></li>
                <li><a href="login.jsp">Login/Register</a></li>
            </ul>            
        </div> --%>
         <div class="row myrow" >
            <div class="col-sm-2"><a href="logout.jsp"><img src="images/logo.jpg" class="img-fluid"></a></div>
            <div class="col-sm-10 myheader">
                <span> <a href="#downfooter">Contact</a></span>
                <span><a href="PriceList.jsp">Price List</a></span>
                <span><a onclick="alert('Please Login first!');">Request PickUp</a></span>
                <span><a href="login.jsp">Login/Register</a></span>
            </div>
        </div>
     
        <div class="container">
        <div class="row"  >
                <div class="col-sm-2"></div>
            <div class="col-sm-8 registerform">
                <h1 class="heading">Register</h1>
                <form method="post" action="RegisterServlet">
                    <label>Name:</label><br>
                    <input type="text" name="Name" required><br>
                    <label>Email:</label><br>
                    <input type="text" name="email" required><br>
                    <label>Password:</label><br>
                 
                    <input type="password" id="pwd" name="password" onkeyup="validatePassword(this.value);" required><br><span id="msg"></span><br>
                    <label>Re-Enter Password:</label><br>
                    <input type="password" name="confirm_password" required><br>
                    <label>Contact:</label><br>
                    <input type="text" name="Contact" required><br>
                    <label>Address:</label><br>
                    <div class="row" style="width:94% ;">
                        <div class="col-sm-6">
                                <input type="text" name="City" placeholder="Enter City" required>
                        </div>
                      
                        <div class="col-sm-6">
                                <input type="text" name="Street" placeholder="Enter Street" required>
                        </div>
                         <div class="col-sm-6">
                                <input type="text" name="Add_type" placeholder="Enter Address Type" required>
                        </div>
                    </div>
                    <br>
                    <input type="text" name="Landmark" placeholder="Enter Landmark" required><br><br>
                    <input type="text" name="House_no" placeholder="Enter Houseno" required><br><br>


                    
                    <input  type="submit" value="Submit"><br><br>
                </form>
                <p class="confirm">Already have an account? <a href="login.jsp" style="color:green ;"> Login</a></p>
                 
            </div>
            <div class="col-sm-2"></div>
        </div>
        </div>
        
               <%
        String status=request.getParameter("RegisValid");
        if(status!=null&&status.equals("false")){   
        %>
        <script>
         alert("This Email_id has already been registered!!");
     </script>
     <%
         }
        else if(status!=null&&status.equals("true"))
            {  
      %>
       <script>
         alert("Successfully Registered! Please login to continue.");
     </script>
     <%}
     %>
     <script>
        function validatePassword(password)
        {
            if(password.length<8)
            {    document.getElementById("msg").innerHTML = "Password must be atleast 8 charaters long!";
                 document.getElementById("msg").style.color = "red";
                return;
            }
            else
            {
                document.getElementById("msg").innerHTML = "";
            }
        }
     </script>
     
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

