
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ScrapKart Login</title> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
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
            <div class="row" >
                <div class="col-sm-3"></div>
                <div class="col-sm-6 loginform" style="background-color: ">
                    <h1 class="heading">Login</h1>
                    <form method="post" action="LoginServlet">
                        <label>Email:</label><br>
                        <input type="text" name="email" required><br><br>
                        <label>Password:</label><br>
                        <input type="password" name="password" required><br><br>

                        <input  type="submit" value="Submit"><br><br>
                    </form>
                    <p class="confirm">Don't have an account?<a href="registerForm.jsp" style="color:green ;margin-left:6%">Register</a></p>

                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>

    </body>
     <div class="container-fluid myfooter"  id="downfooter" style="height: 15vw;">
        
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

    <%
        String status = request.getParameter("isvalid");
        if (status != null && status.equals("false")) {
    %>
    <script>
        alert("Invalid user_id or password!!");
    </script>
 
    <%
        }
    %>
     <%
        String status2 = request.getParameter("Regisvalid");
        if (status2!= null && status2.equals("true")) {
    %>
     <script>
        alert("Registration Successful!Please Login");
    </script>
    <%
       }
        else if(status2!=null&&status2.equals("false"))
        {
     %>
     <script>
        alert("Already registered with this username!");
     </script>
     <% } %>
</html>
