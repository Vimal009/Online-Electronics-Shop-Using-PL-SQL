<%-- 
    Document   : addproduct
    Created on : 26 Aug, 2022, 5:26:21 PM
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
        <title>Add Product</title>
    </head>
    <body>
        <div class="form">
        <form method="post" action="../operation/add.jsp">
            <h3>Product Id: <input type="text" name="id" placeholder="ID"><br></h3>
            <h3>Product Name: <input type="text" name="name" placeholder="Name"><br></h3>
            <h3>Product Description: <input type="text" name="description" placeholder="Description"><br></h3>
            <h3>Product Price: <input type="text" name="price" placeholder="Price"><br></h3>
            <h3>Product Color: <input type="text" name="color" placeholder="Color"><br></h3>
            <h3>Company Name: <input type="text" name="company" placeholder="Company Name"><br></h3>
            <h3>Product Type: <input type="text" name="type" placeholder="Type"><br></h3>
            <h3>Product Available: <input type="text" name="available" placeholder="Available"><br></h3>
            
            <input type="submit" value="ADD">
        </div>
        </form>
    </body>
</html>
