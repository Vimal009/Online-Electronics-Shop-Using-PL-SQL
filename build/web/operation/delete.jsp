<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
    </head>
    <body>
        <% 
            try{
                String url = "jdbc:mysql://localhost:3306/adbms";
            String user = "root";
        String pass = "";

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, user, pass);

                CallableStatement delete_prtcs = con.prepareCall("{call deleteproduct(?)}");
                
                delete_prtcs.setInt(1,Integer.parseInt(request.getParameter("pid")));
                
                delete_prtcs.execute();
                
                out.print("<script>");
                out.print("alert('Product Deleted Successfully')");
                out.print("locations='../product/deleteproduct.jsp");
                out.print("</script>");   
                out.print("Success");
                response.sendRedirect("show.jsp");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }         
        %>
    </body>
</html>

