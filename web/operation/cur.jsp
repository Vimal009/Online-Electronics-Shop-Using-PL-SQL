<%-- 
    Document   : cur
    Created on : 4 Sep, 2022, 8:56:54 PM
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
            CALL cur();
        </sql:query>
        <table border = "3" width = "50%">
            <tr>
                <th>Name</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td> <c:out value = "${row.pname}"/></td>      
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
