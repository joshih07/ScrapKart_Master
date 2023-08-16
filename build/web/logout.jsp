<%-- 
    Document   : logout
    Created on : 20 Feb, 2023, 10:22:17 AM
    Author     : HIMANSHU JOSHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.removeAttribute("user_mail");
    session.invalidate();
    response.sendRedirect("index.html");
%>
