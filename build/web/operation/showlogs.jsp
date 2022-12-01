<%-- 
    Document   : showlogs
    Created on : 28 Aug, 2022, 8:18:37 PM
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
                 background-color: wheat;
             }
         </style>
        <title>LOGS</title>
    </head>
    <body>
        <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/adbms"
                           user = "root" password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from logs;
        </sql:query>
        <table border = "3" width = "50%">
            <tr>
                <th>ID</th>
                <th>Product ID</th>
                <th>Action</th>
                <th>Date</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td> <c:out value = "${row.id}"/></td>
                    <td> <c:out value = "${row.pid}"/></td>
                    <td> <c:out value = "${row.action}"/></td>
                    <td> <c:out value = "${row.cdate}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>