<%@page import="java.sql.SQLException"%>
<%@page import="scrapKart.pojo.PkDetails"%>
<%@page import="scrapKart.model.scrapKartModel"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>ScrapKart DashBoard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/Dashboard.css">       
    </head>
<body>
     <%     
              ArrayList<PkDetails> request_List=new ArrayList<PkDetails>();
              try
              { 
                  request_List=scrapKartModel.getPkDetails();
              }
              catch(SQLException e)
              {
                   e.printStackTrace();
              }
              System.out.println("reqlist of pickupboy"+request_List);
              
              String total_purchase ="";
              try
              { 
                  total_purchase=scrapKartModel.purchaseAmount();         
              }
              catch(SQLException e)
              {
                   e.printStackTrace();
              }      
        %>
    <div class="row myrow">
        <div class="col-sm-2"><img src="images/logo.jpg" class="img-fluid"></div>
        <div class="col-sm-10 myheader">
            <span class="myspan" ><a href="ViewRequestM2.jsp">View Request</a></span>
            <span class="myspan"><a href="PriceListM2.jsp">PriceList</a></span>
            <span class="myspan"><a href="">DashBoard</a></span>
            <span class="myspan"><a href="LoginM2.html">Log out</a></span>
       </div>
    </div>
    <div class="heading">
        <h3 style="margin-left: 27px;">DASHBOARD</h3>
    </div>   
    <div class="major">
    <div class="minor1">
         <form method="post" action="DashBoard2M2.jsp">
            <h3>Filters</h3>
            <br>
            <a onclick="enable()" class="resetAnchor" > <p style="color:graytext; font-size: small;float:right" onMouseOver="this.style.color=red" onMouseOut="this.style.color=gray">Reset Filters</p></a>
            
            <label for="CustomerName">Search by PickUp Boy Name</label>
            <a onclick="disable1()"><input type="text" id="PickUpBoyName" name="PickUpBoy Name" placeholder="PickUpBoy Name"></a><br>            
<!--            <label >Search by Date Range</label><br>
            <label > From</label><br>
            <a onclick="disable2()"><input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="fromdate"  placeholder="dd/mm/yyyy" id="fromdate"></a>
            <label> To</label><br>
            <a onclick="disable2()"><input type="text" pattern="\d{1,2}/\d{1,2}/\d{4}" class="datepicker" name="todate" placeholder="dd/mm/yyyy" id="todate"></a>-->
            <input type="submit" value="Search">
        </form>
        <!--<input type="submit" value="Search Again" onclick="window.location.href='DashBoard2M2.jsp'">-->
    </div>   
   <div class="container-fluid" style="height:200px;">
  <div class="row">
    <div class="col-sm-5 minor2">
      <h4 style="text-align: center;">PURCHASE</h4>
      <p style="text-align:center;">Today's overall purchase</p>
      <br>
       <h1 style="text-align: center;"><%= total_purchase %></h1>
    </div>
    <div class="col-sm-2" style="width:8%;"></div>
    <!--
    <div class="col-sm-5 minor2">
      <h4 style="text-align: center;">EXPENSES</h4>
      <p style="text-align:center;">Today's overall expenses</p>
      <br>
      <span>
        <h1 style="text-align: center;">Rs 500</h1>
      </span>
    </div>
    -->
  </div>
</div>

    <div class="minor3">
        <h4 style="margin-top: 10px;">PICKUP BOY DETAILS</h4>
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
        function disable1()
        {
            document.getElementById("fromdate").disabled=true;
            document.getElementById("todate").disabled=true;
        }
        function disable2()
        {
            document.getElementById("PickUpBoyName").disabled=true;    
        }     
        function enable()
        {
            document.getElementById("PickUpBoyName").disabled=false;
            document.getElementById("fromdate").disabled=false;
            document.getElementById("todate").disabled=false; 
            document.getElementById("PickUpBoyName").placeholder = "PickUpBoy Name";
            document.getElementById("fromdate").placeholder = "dd/mm/yyyy";
            document.getElementById("todate").placeholder = "dd/mm/yyyy";
        }
    </script>
</html>