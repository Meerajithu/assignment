<%-- 
    Document   : insert
    Created on : 29 Apr, 2021, 11:09:56 PM
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
        <h1>Employee details</h1>
        <%!
            Connection conn;
            Statement stmt;
            ResultSet result;
            String qry;
            Integer empId;
        %>
        <%
          if(request.getParameter("empid")!=null)
             {
              String empid=request.getParameter("empid");
              String fname=request.getParameter("fname");
              String lname=request.getParameter("lname");
              String dep=request.getParameter("dep");
              String add=request.getParameter("add");
              String state=request.getParameter("state");
              String count=request.getParameter("count");
              String zip=request.getParameter("zip");
              
              Class.forName("conn.mysql.jdbc.Driver");
              conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/meera","root","root");
              stmt = conn.createStatement();
              qry = "insert into Employee(empid,fname,lname,dep,add,state,count,zip)values()";
              result = stmt.executeQuery(qry);
             }            
          %>
          <%
                  Class.forName("com.mysql.jdbc.Driver");
                  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/meera","root","root");
                  stmt = conn.createStatement();
                  qry = "SELECT * FROM employee";
                  result = stmt.executeQuery(qry);
                        
            %>
             <h1>!!!!Employee List!!!!!!</h1>
        <table border="1" cellspacing="5" cellpadding="6">
            <thead>
                <tr>
                    <th>Employee id</th>
                    <th>Employee First Name</th>
                    <th>Employee Last Name</th>
                    <th>DEpartment</th>
                    <th>Address</th>
                    <th>State</th>
                    <th>Country</th>
                    <th>Zip Code</th>
                  </tr>
            </thead>               
           <tbody>   
               <%
                   while(result.next()){
               %>                   

               
                <tr>
                    <td><%=empId%></td>
                    <td><%=result.getString("fname")%></td>
                    <td<%=result.getString("lnmae")%></td>
                    <td><%=result.getString("dep")%></td>
                    <td><%=result.getString("add")%></td>
                    <td><%=result.getString("state")%></td>
                    <td><%=result.getString("count")%></td>
                    <td><%=result.getInt("zip")%></td>
                    <th><a href="update.jsp"></a>EDIT</th>
                     <th><a href="delete.jsp"></a>DELETE</th>
                 </tr>
                <%
                    }
                 %>
            </tbody>
        </table>
            
      </body>
</html>        
            
            
            
            
            
            
            
            
            
            
            
            
            
  
