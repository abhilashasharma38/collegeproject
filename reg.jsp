<%@page import="java.sql.*"%>
<%
     String s1=request.getParameter("u1");
     String s2=request.getParameter("e1");
     String s3=request.getParameter("p1");
     String s4=request.getParameter("pc1");
     try
     {
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?useSSL=false","root","1733264271");
           PreparedStatement ps=con.prepareStatement("insert into college1 values(?,?,?) ");
           ps.setString(1,s1);
           ps.setString(2,s2);
           ps.setString(3,s3);
           ps.executeUpdate();
           out.print("account is created");
           
     }
     catch(Exception e){
         out.print(e);
           
     }
     %>
