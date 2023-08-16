<%@page import="java.sql.SQLException"%>
<%@page import="scrapKart.pojo.PkDetails"%>
<%@page import="scrapKart.model.scrapKartModel"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ScrapKart DashBoard(ii)</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/Dashboard.css">
        
    </head>
<body>
    <!-- <div>
        <ul>
            <li id="logo"><img src="images/logo.jpg" alt="ScrapKart" height="60" width="100"></li>
            <li><a href="EmployeeLogin.html">Log out</a></li>
            <li><a href="DashBoard.html">DashBoard</a></li>
            <li><a href="ViewRequest.jsp">View Request</a></li>
            <li><a href="request.html">Profile</a></li> 
        </ul>
    </div> -->
    
     <%
         
              String total_purchase ="";
              try
              { 
                  total_purchase=scrapKartModel.purchaseAmount();
              }
              catch(SQLException e)
              {
                   e.printStackTrace();
              }      
           
              ArrayList<PkDetails> request_List=new ArrayList<PkDetails>();
                    
                if(!(request.getParameter("PickUpBoy Name")==null))
                    {
                        System.out.println("cusstomerrr");
                        String PkName=request.getParameter("PickUpBoy Name");
                        try
                        {
                            request_List=scrapKartModel.FetchDetailsPkName(PkName);
                            
                        }
                        catch(Exception e)
                        {
                            e.printStackTrace();
                        }     
                    }              
//                    else
//                    {
//                        String fromdate=request.getParameter("fromdate");
//                        String todate=request.getParameter("toDate");
//                        try
//                        {
//                            request_List=scrapKartModel.FetchDetailsOnFromdate(fromdate,todate);
//                        }
//                        catch(Exception e)
//                        {
//                            e.printStackTrace();
//                        } 
//                    }  
//                    System.out.println(request_List);
        %>

    <div class="row myrow">
        <div class="col-sm-2"><img src="images/logo.jpg" class="img-fluid"></div>
        <div class="col-sm-10 myheader">
            <span class="myspan" ><a >View Request</a></span>
            <span class="myspan"><a href="PriceListM2.jsp">PriceList</a></span>
            <span class="myspan"><a href="DashBoardM2.jsp">DashBoard</a></span>
            <span class="myspan"><a href="LoginM2.html">Log out</a></span>
       </div>
    </div>
    <div class="heading">
        <h3 style="margin-left: 27px;">DASHBOARD</h3>
    </div>   
    <div class="major">
    <div class="minor1">
         <form method="post" action="DashBoardM2.jsp">
            <h3>Filters</h3>
            <br>
            <a onclick="enable()" class="resetAnchor" > <p style="color:graytext; font-size: small;float:right" onMouseOver="this.style.color=red" onMouseOut="this.style.color=gray">Reset Filters</p></a>
            
            <label for="CustomerName">Search by PickUp Boy Name</label>
            <a onclick="disable1()"><input type="text" id="PickUpBoyName" name="PickUpBoy Name" placeholder="PickUpBoy Name"></a><br>
           <!--<label >Search by Date Range</label><br>-->
<!--            <label > From</label><br>
            <a onclick="disable2()"><input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="fromdate"  placeholder="dd/mm/yyyy" id="fromdate"></a>
            <label> To</label><br>
            <a onclick="disable2()"><input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="todate" placeholder="dd/mm/yyyy" id="todate"></a>-->
            <input type="submit" value="Search">
        </form
         <input type="submit" value="Search Again" onclick="window.location.href='DashBoardM2.jsp'">
    </div>
    <div class="container-fluid" style=" height:200px;">
        <div class="row">
            <div class=" col-sm-5 minor2">
                <h4 style="text-align: center;">PURCHASE</h4>
                <p style="text-align:center;">Today's overall purchase</p>
                <br>
<!--                <span>-->
                    
                    <h1 style="text-align: center;"><%= total_purchase%></h1>
<!--                </span>-->
            </div>
            <div class="col-sm-2" style="width:8%;">

            </div>
            <!--<div class=" col-sm-5 minor2">
                <h4 style="text-align: center;">EXPENSES</h4>
                <p style="text-align:center;">Today's overall expenses</p>
                <br>
                <span>
                    <h1 style="text-align: center;">Rs 500</h1>
                </span>
            </div>-->
        </div> 
    </div>
    <div class="minor3">
        <h4>PICKUP BOY DETAILS</h4>

        <table class="table  reqTable" >
            <thead class="rowhead">
                <tr>
                    <th>PickUp Boy Id</th>
                    <th>Name</th>
                    <th>Req. Assigned</th>
                    <th>Status</th>
                    <th>Scheduled Date</th>    
               </tr>
           </thead>
           <tbody>
               <%
                   for(PkDetails d:request_List)
                   {
               %>
               <tr>
                   <td><%=d.getPk_Id() %></td> 
                  <td><%=d.getName() %></td>
                  <td><%=d.getReq_id() %></td>
                  <td><%=d.getStatus() %></td>
                  <td><%=d.getScheduled_date() %></td>
               </tr>
               <%}
               %>
           </tbody>
   </table>
    </div>    
    </div>
</body>
<script>
      function disableAll()
        {
            document.getElementById("PickUpBoyName").disabled=true;
            document.getElementById("fromdate").disabled=true;
            document.getElementById("todate").disabled=true;
            document.getElementById("PickUpBoyName").disabled="PickUpBoy Name";
            document.getElementById("fromdate").placeholder = "dd-mm-yyyy";
            document.getElementById("todate").placeholder = "dd-mm-yyyy";
        }
</script>
</html>