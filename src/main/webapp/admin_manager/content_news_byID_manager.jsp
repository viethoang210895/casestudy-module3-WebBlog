<%--
  Created by IntelliJ IDEA.
  User: QuangMax
  Date: 06/12/2022
  Time: 11:53 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <style>
        .header {
            background-image: url("https://img.freepik.com/free-photo/silver-dollar-eucalyptus-branch-gray-banner_53876-129660.jpg?w=2000");
            width: 100%;
            height: 200px;
            background-size: 1500px;
            text-align: center;
            padding-top: 20px;
            font-size: 40px;
        }

        .directional {
            display: flex;
            justify-content: center;
            text-align: center;
            /*border: 1px solid black;*/
        }

        .directional form button {
            display: inline-block;
            margin-left: 15px;
            margin-right: 15px;
            border: none;
            background: transparent;
            height: 50px;
            font-size: 15px;
            font-weight: bold;
            text-align: center;
        }

        button:hover {
            color: #ffffff;
            background-color: #43d066 !important;
        }

        .ads img {
            width: 100%;
            display: block;
        }

        .showContent {
            /*border: 1px solid black;*/
            width: 90%;
            padding-left: 10%;
            padding-right: 10%;
            text-align: center;
        }

    </style>
</head>
<body>
<div>
    <div class="row">
        <div class="header">
            <h1>Manager Blog</h1>
        </div>
    </div>
</div>
<div class="container"  >
    <div class="directional"  style="background: #7875B5" >
        <form action="/managers?" method="get">
            <button type="submit">Home |</button>
        </form>
        <form action="/managers?action=listCategory" method="post">
            <button type="submit">Category |</button>
        </form>
        <form action="/managers?action=sort&category=sport" method="post">
            <button type="submit">Sport |</button>
        </form>
        <form action="/managers?action=sort&category=culture" method="post">
            <button type="submit">Culture |</button>
        </form>
        <form action="/managers?action=all_list_news" method="post">
            <button type="submit">All List News |</button>
        </form>
        <form action="/managers?action=all_list_user" method="post">
            <button type="submit">All List News |</button>
        </form>
    </div>
</div>
<div align="center" >
    <div class="mid" style="width: 60%">
        <div><c:out value="${newById.getUser().getUserName()}"/></div>
        <div><c:out value="${newById.getDateNews()}"/></div>
        <div><c:out value="${newById.getTileNews()}"/></div>
        <div><c:out value="${newById.getContent()}"/></div>
        <div><img src="${newById.getImg()}"></div>
    </div>
</div>
</div>
</body>
</html>
