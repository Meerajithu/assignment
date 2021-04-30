<%-- 
    Document   : delete
    Created on : 30 Apr, 2021, 7:48:28 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <form action='#'>
        
        <%!
            Connection conn;
            Statement stmt;
            ResultSet result;
            String qry;
            Integer empId;
        %>
        <%
                  String s1=request.getParameter("id");
                  Class.forName("com.mysql.jdbc.Driver");
                  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/meera","root","root");
                  stmt = conn.createStatement();
                  qry = "delete  FROM employee where id='"+s1+"' ";
                  result = stmt.executeQuery(qry);
                  response.sendRedirect("view.jsp");
        %>
              <h1>one row deleted..</h1>
        
        </form> 
    </body>
</html>
