<%-- 
    Document   : update
    Created on : 30 Apr, 2021, 7:48:14 AM
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
        <h1>Edit Details..</h1>
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
                  qry = "SELECT * FROM employee where id='"+s1+"' ";
                  result = stmt.executeQuery(qry);
                  while(result.next())
                  {
          %>                
            <label> Employee id: </label> &nbsp; 
            <input type="text" name="empid" value="<result.getString(id)"><br>
            <label> First Name:</label>&nbsp; &nbsp;
             <input type="text" name="fname" value="<result.getString(fname)"><br>
             <label> Last Name:</label>&nbsp; &nbsp;
            <input type="text" name="lname" value="<result.getString(lname)"><br>
            <label> Department:</label>&nbsp; &nbsp;
            <select name="dep" value="<result.getString(dep)">
                <option value=Accounting></option>
                <option value=Technical></option>
                <option value=Logistics></option>
            </select>
            <label>Address:</label>&nbsp; &nbsp;
            <input type="text" name="add" value="<result.getString(add)"><br>
            <label> State:</label>&nbsp; &nbsp;
            <input type="text" name="state" value="<result.getString(state)"><br>
            <label> Country:</label>&nbsp; &nbsp;
            <input type="text" name="count" value="<result.getString(count)"><br>
            <label> Zip code:</label>&nbsp; &nbsp;
            <input type="text" name="zip" value="<result.getInt(zip)"><br>
          <input type="submit" value="edit" name="update">
         </form>
          <%
              String str=request.getParameter("update");
               if("edit".equals(str))
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
              qry = "update Employee(set fname="+fname+", lname="+lname+", dep="+dep+", add="+add+", state="+state+", count="+count+",zip="+zip+")  ";
              result = stmt.executeQuery(qry);
              response.sendRedirect("view.jsp");
            %>
               
    </body>
</html>

   
        
 