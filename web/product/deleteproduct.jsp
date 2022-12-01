<%-- 
    Document   : deleteproduct
    Created on : 26 Aug, 2022, 5:26:34 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            form{
                width: 350px;
                height: 390px;
                background: linear-gradient(to top,rgb(248, 248, 248)100%,rgb(243, 241, 241)9);
                position: absolute;
                top: 100px;
                right: 450px;
                border-radius: 10px;
                padding: 25px;
            }
            h3{
                color: white;
            }
            body {
            background-image: url("iii.jpg");
            background-color: #cccccc;
            background-repeat: no-repeat;
            background-size: 100%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
    </head>
    <body>
        <div class="form">
        <form action="../operation/delete.jsp">
            <h3>Product Id: <input type="text" name="pid" placeholder="ID"><br></h3>
            
            <input type="submit" value="DELETE">
            </div>
        </form>
    </body>
</html>