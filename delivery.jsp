<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
        <style>
            #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
        </style>
    <title>Delivery Agent</title>
</head>
<body>
    <%@page import="java.sql.*"%>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="font-weight: bold;">Aravind Store &ensp;&ensp;&ensp;&ensp;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-link active" href="#">&ensp;&ensp;Home&ensp;&ensp;<span
                        class="sr-only">(current)</span></a>
                <a class="nav-link active" href="profile.jsp">&ensp;&ensp;My Profile&ensp;&ensp;</a>
                <form action="logout.jsp" method="post">
                <input class="btn btn-danger" type="submit" value="Log Out">
            </form>
                <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
            </div>
        </div>
    </nav>
    <div>
    <h3>Total orders are:</h3><br>
    <h3>Current active orders:</h3>
    </div>
    <table id="customers">
        <tr>
          <th>Order Id</th>
          <th>Name</th>
          <th>Item</th>
          <th>price</th>
          <th>Order Date</th>
          <th>Delivery Status</th>
          <th>Delivery Address</th>
          <th>Update Status</th>
        </tr>
        <tr>
        <%
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
                String str = "select ORDER_ID,ITEM,PRICE,ORDER_DATE,STATUS,ADDRESS,NAME from orders where status != 'delivered'";
                PreparedStatement st = con.prepareStatement(str);
                ResultSet rs = st.executeQuery();
                while(rs.next())
                {
                int oid = rs.getInt(1);
                String item = rs.getString(2);
                String price = rs.getString(3);
                String date = rs.getString(4);
                String statu = rs.getString(5);
                String add = rs.getString(6);
                String name = rs.getString(7);
                %>
                    <td><%=oid%></td>
                    <td><%=name%></td>
                    <td><%=item%></td>
                    <td><%=price%></td>
                    <td><%=date%></td>
                    <td><%=statu%></td>
                    <td><%=add%></td>
                    <td>
                        <form action="update_det.jsp">
                            <select name="delivery_status" required>
                                <option value="">select</option>
                                <option value="shipped">Shipped</option>
                                <option value="out For delivery">Out For Delivery</option>
                                <option value="delivered">Delivered</option>
                            </select>
                            <button class="btn btn-primary" style="margin-left: 10px;" value="<%=oid%>" name="oid_val">Update</button>
                        </form>
                    </td>
                  </tr>
                <%}
                }
            catch(Exception e)
            {
                System.out.println(e);
            }%>
    </table>



    <div class="d-flex flex-row justify-content-around pt-5 bg-secondary">
        <div class="d-flex flex-column justify-content-start">
            <h4>Contac Us</h4>
            <p>Aravind Stores    office,<br>Mylavaram<br>NTR District<br>Vijayawada<br>Andhra Pradesh<br>India.</p>
        </div>
        <div class="d-flex flex-column justify-content-start">
            <h4>Quick Links</h4>
            <a>Home</a>
            <a>Sign In</a>
            <a>Login</a>
        </div>
        <div class="d-flex flex-column justify-content-start">
            <h4>Quick Links</h4>
            <a>Facebook</a>
            <a>Instagram</a>
            <a>Twitter</a>
            <a>LinkedIn</a>
        </div>

    </div>
    <div class="d-flex flex-row justify-content-center bg-secondary">
        <h4>Created by <img src="https://www.freepnglogos.com/uploads/copyright/copyright-symbol-intellectual-vector-graphic-pixabay-34.png" height="25px" width="25px"/>K.Aravind</h4>
    </div>
</body>
</html>