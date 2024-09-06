<%@page import="java.sql.*"%>
<%
    String sta = request.getParameter("delivery_status");
    String oid1 = request.getParameter("oid_val");
    int oid = Integer.parseInt(oid1);
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
            String str = "update orders set status=? where order_ID=?";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,sta);
            st.setInt(2,oid);
            st.executeUpdate();
            response.sendRedirect("delivery.jsp");
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>