<%-- 
    Document   : show
    Created on : 26 Aug, 2022, 9:30:28 PM
    Author     : LENOVO
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
        <style>
             table, th, td {
                 border: 2px solid black;
                 border-collapse: collapse;
             }
             table.center {
                 margin-left: auto; 
                 margin-right: auto;
             }
             body{
                 background-color: papayawhip;
             }
         </style>
        <title>All Products</title>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/adbms"
                           user = "root" password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from details;
        </sql:query>
        <table>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Product Color</th>
                <th>Company Name</th>
                <th>Product Type</th>
                <th>Product Available</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                <td> <c:out value = "${row.id}"/></td>
                <td> <c:out value = "${row.name}"/></td>
                <td> <c:out value = "${row.description}"/></td>
                <td> <c:out value = "${row.price}"/></td>
                <td> <c:out value = "${row.color}"/></td>
                <td> <c:out value = "${row.company}"/></td>
                <td> <c:out value = "${row.type}"/></td>
                <td> <c:out value = "${row.available}"/></td>
                <td><a href="../product/updateproduct.jsp">Update</a></td>
                <td><a href="../product/deleteproduct.jsp">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
