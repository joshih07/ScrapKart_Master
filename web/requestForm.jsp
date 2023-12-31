<%-- 
    Document   : requestForm
    Created on : 23 Dec, 2022, 4:22:28 PM
    Author     : HIMANSHU JOSHI
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="scrapKart.model.scrapKartModel"%>
<%@page import="scrapKart.pojo.Request"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>My Request</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/request.css">
        
    </head>
    <body>
        <%-- <div>
            <ul>
                <li id="logo"><a href="logout.jsp"><img src="images/logo.jpg" alt="ScrapKart" height="60" width="100"></a></li>
                <li><a href="logout.jsp">LogOut</a></li>
                <li><a href="www.google.com">Contact</a></li>
                <li><a   onclick="add_req_fun()">Request PickUp</a></li>
                <li><a href="www.google.com">Price List</a></li>
            
            </ul>
            
        </div> --%>
         <div class="row myrow" >
            <div class="col-sm-2"><a href="logout.jsp"><img src="images/logo.jpg" class="img-fluid"></a></div>
            <div class="col-sm-10 myheader">
                <span><a href="PriceList.jsp">Price List</a></span>
                <span><a onclick="document.getElementById('id01').style.display='block'">Request PickUp</a></span>
                <span> <a href="#downfooter">Contact</a></span>
                <span><a href="logout.jsp">Log out</a></span>
               
                
                
            </div>
        </div>
             <%
            String user=session.getAttribute("user_mail").toString();
            String username=scrapKartModel.getUserName(user);
            ArrayList<Request> req=new ArrayList<Request>();
            try
            {
                System.out.println("Inside try of requestform where function is called before getall request is called!!");
                req=scrapKartModel.getAllRequests(user);
                System.out.println("Inside try of requestform where function is called!!");
            }
            catch(SQLException e)
             {
                 e.printStackTrace();
             }
            int count=0;
            
         %>
         
       <div class="username"><h2>Welcome <%= username%>!</h2></div>
       <div class="nav2">
            <a href="viewProfile.jsp" >View Profile</a>
            <a href="editProfile.jsp" >Edit Profile</a>
        </div>
 
            <div class="heading"><h2>Request Status</h2></div>  
            <div class="col-sm-12 requestTable">
            
             <table>
    <tr>
        <th>Request</th>
        <th>Requested Date</th>
        <th>Scheduled Date</th>
        <th>Address</th>
        <th>Type</th>
        <th>Status</th>
    </tr>
    
      <% for(Request r:req) {
            count++;
             %>
        <!--<tr id="<%= r.getReq_id()%>">-->
             <tr>
        <td><%= count%></td>
        <td><%= r.getReq_date() %></td>
        <td><%= r.getSchd_date() %></td>
        <td><%= r.getAddress() %></td>
        <td><%= r.getReq_type() %></td>
        <% if(r.getStatus().equals("Completed")) { %>
        <td>
            <a data-id="<%= r.getReq_id()%>" onclick="fetchReqId(this)" data-toggle="tooltip" title="Click to view Description">
                <%= r.getStatus() %>
            </a>
        </td>
        <% } else { %>
        <td>
            <a data-id="<%= r.getReq_id()%>" onclick="CancelReq(this)" data-toggle="tooltip" title="Click to Cancel Request">
                <%= r.getStatus() %>
            </a>
        </td>
        <% } %>
    </tr>
    <% } %>
</table>

               <br><br>   
                 
               <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-large myclick">+ Add Request</button>
            </div>
           <div class="w3 container">
           <div id="id01" class="w3-modal">
               <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

                <div class="w3-center"><br>
                    <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>

                    <form  class="w3-container " method="post" action="AddReqServlet">
                    <div class="w3-section">
                        <div class="form-group">
                            <label for="sel1" style="font-size:20px" >Select Request Type:</label>
                            <select class="form-control" id="sel1" name="reqType">
                                <option value="pickup" style="font-size:15px">PickUp</option>
                                <option value="visit" style="font-size:15px">Visit</option>
                            </select><br><br>
                      
                            <label for="comment" style="font-size:20px">Add Description:</label>
                            <textarea class="form-control" rows="5" id="comment" name="desc"></textarea><br><br>
                            <button class="btn btn-success" type="submit">Submit</button>

                          </div>        
                    </div>
                    
                </form>
           </div> 

           </div>
        </div>
       </div>
       <div class="container-fluid myfooter" id="downfooter"  style="height: 15vw;">
        
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
      <%
        String status=request.getParameter("addReqisValid");
        if(status!=null&&status.equals("false")){
        
     %>
      <script>
         alert("Something went Wrong! Please Add request Again!");
     </script>
     <%
         }
            else if(status!=null)
        {
      %>
    <script>
         alert("Request Added!!");
     </script>
     <%
         }
      %>
  

      <script>
          function add_req_fun()
          {
              document.getElementById('id01').style.display='block';
          }
           
           function fetchReqId(d)
           {   
               alert("completed request!");
               var req_id=d.getAttribute("data-id");
               window.location.replace("RequestInfo.jsp?req_id="+req_id);
           } 
           function CancelReq(d)
           {
               alert("Request being Cancelled");
               var req_id=d.getAttribute("data-id");
               
               alert(req_id);
               var url="CancelReqServlet2?req_id="+req_id;
               if(window.XMLHttpRequest)
               {
                   request=new XMLHttpRequest();
               }
               request.onreadystatechange=function(){
                        if(this.readyState==4&&this.status==0)
                        {
                            alert("Please relod to see changes");
                            var this_request_id=request.responseText;     
                            document.getElementById("req_id").remove();  
                        }
               };
               
                   request.open("GET",url,true);
                   request.send();
                   
           }  
          
      </script>
      <%  
        String request_id=request.getParameter("req_id");
        System.out.println(request_id);
       %>
       

</html>

