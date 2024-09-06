<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- Custom Css -->
    <link rel="stylesheet" href="profile_css.css">

    <!-- FontAwesome 5
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"> -->
</head>
<body>
    <%
        String name = (String)session.getAttribute("username");
        String mail = (String)session.getAttribute("email");
        String mno = (String)session.getAttribute("mobilenumber");
    %>
    <!-- Main -->
    <div class="main">
        <h2>My Profile</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <table>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><%=name%></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td><%=mail%></td>
                        </tr>
                        <tr>
                            <td>Mobile number</td>
                            <td>:</td>
                            <td><%=mno%></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        
    </div>
    <!-- End -->
</body>
</html>