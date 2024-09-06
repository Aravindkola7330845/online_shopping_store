<%@page import="java.sql.*"%>
<%
try
{
            String name = request.getParameter("uname");
            String email = request.getParameter("mail");
            String mob = request.getParameter("mob_no");
            String pass = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            if(pass.equals(pass2)){
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
                String str = "insert into my_users values(?,?,?,?,'user',u_id.NEXTVAL)";
                PreparedStatement pst = con.prepareStatement(str);
                pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,mob);
                pst.setString(4,pass);
                pst.executeQuery();
                response.sendRedirect("login.html");
            }
            else{
                    out.println("Password doesn't match!!");%>
                    <jsp:include page="login.html"/>
                <%
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>