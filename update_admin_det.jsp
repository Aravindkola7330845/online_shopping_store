<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
  int uid = Integer.parseInt(request.getParameter("ID"));
  String name = request.getParameter("name");
  String email = request.getParameter("mail");
  String mobile = request.getParameter("mobile");
try
{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
      String str = "update  my_users set NAME=?,EMAIL=?,MOBILE=? where USER_ID=?";
      PreparedStatement pst = con.prepareStatement(str);
      pst.setString(1,name);
      pst.setString(2,email);
      pst.setString(3,mobile);
      pst.setInt(4,uid);
      pst.execute();
      response.sendRedirect("admin.html");
  }
  catch(Exception e)
  {
      out.println(e);
  }
%>