<%@page import="java.sql.*"%>
<%@page import="java.time.LocalDate"%>
<%
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
    String str = "insert into orders values(orderid.NEXTVAL,?,?,?,?,?,?,?,?,?,'ordered')";
    PreparedStatement st = con.prepareStatement(str);
    String nam = request.getParameter("name");
    session.setAttribute("ordername",nam);
    String emai = request.getParameter("mobile");
    String mobil = request.getParameter("item");
    String addres = request.getParameter("address");
    String pincod = request.getParameter("pincode");
    LocalDate myObj = LocalDate.now();
    String date = myObj.toString();
    String produc = request.getParameter("item");
    String pric = request.getParameter("price");
    int id = (int)session.getAttribute("userid");
    st.setString(1,nam);
    st.setString(2,emai);
    st.setString(3,mobil);
    st.setString(4,addres);
    st.setString(5,pincod);
    st.setString(6,date);
    st.setString(7,produc);
    st.setString(8,pric);
    st.setInt(9,id);
    st.executeUpdate();
    response.sendRedirect("conformation.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}
%>