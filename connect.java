import java.sql.*;
class connect
{
    public static void main(String ar[])
    {
        try
{
            // String name = request.getParameter("uname");
            // String email = request.getParameter("mail");
            // String mob = request.getParameter("mob_no");
            // String pass = request.getParameter("pass1");
            // String pass2 = request.getParameter("pass2");
            String name="Aravind",email="aravind@gmail.com",mob="1234567890",pass="123456",pass2="123456";
            if(pass.equals(pass2)){
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
                String str = "insert into myusers values(?,?,?,?)";
                PreparedStatement pst = con.prepareStatement(str);
                pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,mob);
                pst.setString(4,pass);
                pst.executeQuery();
                // response.sendRedirect("login.html");
            }
            else{
                    System.out.println("Password doesn't match!!");
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}