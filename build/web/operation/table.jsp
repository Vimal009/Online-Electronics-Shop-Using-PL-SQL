<%-- 
    Document   : table
    Created on : 26 Aug, 2022, 6:30:34 PM
    Author     : LENOVO
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
        <title>All Products</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: "Inter", sans-serif;
                color: #343a40;
                line-height: 1;
                display: flex;
                justify-content: center;
                background-color: wheat;
            }

            table {
                width: 800px;
                margin-top: 80px;
                border-collapse: collapse;
                font-size: 18px;
            }

            th,
            td {
                padding: 16px 24px;
                text-align: left;
            }

            thead th {
                background-color: #087f5b;
                color: #fff;
                width: 25%;
            }

            tbody tr:nth-child(even) {
                background-color: #f8f9fa;
            }

            tbody tr:nth-child(odd) {
                background-color: #e9ecef;
            }

        </style>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/adbms"
                           user = "root" password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT `count123`() AS `count123`;
        </sql:query>
        <table border = "3" width = "50%">
            <tr>
                <th>Total Products</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td> <c:out value = "${row.count123}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>