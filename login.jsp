<%@page import="java.sql.*"%>
<%
  if (request.getMethod().equals("POST")) {
    String email = request.getParameter("email");
    String pass = request.getParameter("password");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
            String str = "select * from my_users where email=? and password=?";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,email);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                String uname = rs.getString(1);
                String mail = rs.getString(2);
                String number = rs.getString(3);
                String role = rs.getString(5);
                int uid = rs.getInt(6);
                session.setAttribute("username",uname);
                session.setAttribute("email",mail);
                session.setAttribute("mobilenumber",number);
                session.setAttribute("userid",uid);
                if(role.equals("user"))
                {
                    response.sendRedirect("index2.jsp");
                }
                else if(role.equals("delivery"))
                {
                    response.sendRedirect("delivery.jsp");
                }
                else{
                    response.sendRedirect("admin.html");   
                }
            }
            else{
                out.println("<h5>Invalid User Details!!<h5>");%>
                <jsp:include page="login.html"/>
                <%
                
            }

        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>