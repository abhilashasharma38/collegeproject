<%@page import="java.sql.*"%>
<%
     String s1=request.getParameter("u1");
     String s2=request.getParameter("p1");
     try
     {
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college?useSSL=false","root","1733264271");
           PreparedStatement ps=con.prepareStatement("select * from college1");
           ResultSet rs=ps.executeQuery();
           int flag=0;
           while(rs.next()){
               if(rs.getString(1).equals(s1)&&rs.getString(3).equals(s2)){
                   
                    flag=1;
               }
               
           }
           if(flag==1){
           response.sendRedirect("newhtml.html");
           }
           else{
         out.print("invalid user");
     }
     }
     catch(Exception e){
         out.print(e);
           
     }
     

  



%>
