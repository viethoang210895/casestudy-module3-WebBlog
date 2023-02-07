<%--
  Created by IntelliJ IDEA.
  User: QuangMax
  Date: 29/11/2022
  Time: 1:54 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login Manager</title>
    <link rel="stylesheet" href="webapp/WEB-INF/bootstrap/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body {
            background-image: url("https://wallpaperaccess.com/full/1782141.jpg");
            background-size: 100% 100%;
        }

        .login {
            text-align: center;
            padding: 0;
            background: rgba(255, 255, 255, 0.4);
            width: 100vw;
            height: 100vh;
            position: relative;
        }

        th{
            text-align: left;
        }
        input{
            border-radius: 3px ;
            width: 300px;
            height: 30px;
            position: center;
        }

        tr td{
            text-align: center;
        }
        div form{
            text-align: center;

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        img{
            width:70% ;
            height:35%;
            opacity: 1;
        }
        .btn-info {
            margin-top: 10px;
            margin-left: 5px;
            width: 250px;
            font-size: 15px;
            text-align: center;
            padding-top: 1px;
        }
        button{
            border-radius: 7px;
            width: 150px;
            background: #43d066;
        }
    </style>
</head>
<body>
<div class="login">
    <div style="clear: both; position: center"><img src="logo.png"/></div>
    <div style="clear: both; position: center">
        <form action="/managers" onsubmit="return checkLog()">
            <table>
                <tr>
                    <th><label class="label col-md-3 control-label" >Account</label></th>
                </tr>
                <tr>
                    <td>
                        <div>
                            <input type="text"  name="userName" placeholder="admin">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th><label  >Password</label></th>
                </tr>
                <tr>
                    <td><div >
                        <input type="password" name="password" placeholder="password">
                        <br>
                        <small style="font-family: initial ">Password must be 6 character</small>
                    </div></td>
                </tr>
                <tr>
                    <td><div><p style="color: red" id="error"></p></div></td>
                </tr>
                <tr>
                    <td>
                        <button type="submit"  style="font-family: initial;" >LOGIN</button>
                    </td>
                </tr>
            </table>
            <div name="error"></div>
        </form>
    </div>
</div>
</body>
<script>
    function checkLog() {
        let id = document.getElementById("idAdmin").value;
        let pass = document.getElementById("passAdmin").value;
        if (id === "admin" && pass === "admin") {
            return true;
        } else {
            document.getElementById("error").innerText = "ID and Password are incorrect";
            return false;
        }
    }
</script>
<script src="webapp/WEB-INF/bootstrap/js/bootstrap.min.js"></script>
</html>
