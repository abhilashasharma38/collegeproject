<%@page import="java.sql.*"%>
<%
     String s1=request.getParameter("f1");
     String s2=request.getParameter("l1");
     String s3=request.getParameter("a1");
     String s4=request.getParameter("m1");
     String s5=request.getParameter("p1");
     String s6=request.getParameter("e1");
     
     
     
     try
     {
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?useSSL=false","root","1733264271");
           PreparedStatement ps=con.prepareStatement("insert into forms values(?,?,?,?,?,?) ");
           ps.setString(1,s1);
           ps.setString(2,s2);
           ps.setString(3,s3);
           ps.setString(4,s4);
           ps.setString(5,s5);
           ps.setString(6,s6);
           ps.executeUpdate();
          response.sendRedirect("formdatasrm.html");
           
     }
     catch(Exception e){
         out.print(e);
           
     }
     %>
