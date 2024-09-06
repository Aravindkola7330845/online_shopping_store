<%@page import="java.sql.*"%>
<%
  int val = Integer.parseInt(request.getParameter("delete"));
try
{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
      String str = "delete from my_users where user_id=?";
      PreparedStatement pst = con.prepareStatement(str);
      pst.setInt(1,val);
      pst.executeUpdate();
      response.sendRedirect("admin.html");
  }
  catch(Exception e)
  {
      out.println(e);
  }
%>