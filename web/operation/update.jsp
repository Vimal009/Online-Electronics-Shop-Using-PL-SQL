<%-- 
    Document   : update
    Created on : 26 Aug, 2022, 5:30:48 PM
    Author     : LENOVO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
    </head>
        <% 
            try{
                String url = "jdbc:mysql://localhost:3306/adbms";
	        String user = "root";
		String pass = "";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
                
                CallableStatement update_prtcs = con.prepareCall("{call updateproduct(?,?,?,?,?,?,?,?)}");
                
                update_prtcs.setInt(1,Integer.parseInt(request.getParameter("pid")));
                update_prtcs.setString(2,request.getParameter("pname"));
                update_prtcs.setString(3,request.getParameter("pdescription"));
                update_prtcs.setInt(4,Integer.parseInt(request.getParameter("pprice")));
                update_prtcs.setString(5,request.getParameter("pcolor"));
                update_prtcs.setString(6,request.getParameter("pcompany"));
                update_prtcs.setString(7,request.getParameter("ptype"));
                update_prtcs.setInt(8,Integer.parseInt(request.getParameter("pavailable")));
                
                update_prtcs.execute();
                
                out.print("<script>");
                out.print("alert('Product Updated Successfully')");
                out.print("locations='../product/updateproduct.jsp");
                out.print("</script>");

                
                out.print("Success");
                response.sendRedirect("show.jsp");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
</html>