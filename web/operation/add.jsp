<%-- 
    Document   : add
    Created on : 26 Aug, 2022, 5:30:41 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
    </head>
    <body>    
        <% 
            try{
                String url = "jdbc:mysql://localhost:3306/adbms";
	        String user = "root";
		String pass = "";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
                
                CallableStatement add_prtcs = con.prepareCall("{call addproduct(?,?,?,?,?,?,?,?)}");
                
                add_prtcs.setInt(1,Integer.parseInt(request.getParameter("id")));
                add_prtcs.setString(2,request.getParameter("name"));
                add_prtcs.setString(3,request.getParameter("description"));
                add_prtcs.setInt(4,Integer.parseInt(request.getParameter("price")));
                add_prtcs.setString(5,request.getParameter("color"));
                add_prtcs.setString(6,request.getParameter("company"));
                add_prtcs.setString(7,request.getParameter("type"));
                add_prtcs.setInt(8,Integer.parseInt(request.getParameter("available")));
                
                add_prtcs.execute();
                
                out.print("<script>");
                out.print("alert('Product Added Successfully')");
                out.print("locations='../product/addproduct.jsp");
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
