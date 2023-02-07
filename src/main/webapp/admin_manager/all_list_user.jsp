<%--
  Created by IntelliJ IDEA.
  User: QuangMax
  Date: 27/11/2022
  Time: 2:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All list user</title>
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
            <h1>List User</h1>
        </div>
    </div>
</div>
<div>
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
            <button type="submit">All List User |</button>
        </form>
    </div>
</div>
<div class="directional">
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of User</h2></caption>
            <tr>
                <th>Id User</th>
                <th>User Name</th>
                <th>Phone User</th>
                <th>Email User</th>
                <th>Address</th>
                <th>Status</th>
                <th>LockAccount</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.idUser}"/></td>
                    <td><a href="/managers?action=infoAccount&idUser=${user.idUser}"><c:out value="${user.userName}"/></a></td>
                    <td><c:out value="${user.phoneNumber}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.address}"/></td>
                    <td><c:choose>
                        <c:when test="${user.statusUser ==1}">
                            <p>Active</p>
                        </c:when>
                        <c:when test="${user.statusUser ==0}">
                            <p>Looked</p>
                        </c:when>
                    </c:choose>
                    </td>
                    <td>
                        <c:if test="${user.statusUser==1}">
                       <form onsubmit="return(confirmDeleteUser())" action="/managers?action=lockUser&idUser=${user.idUser}" method="post">
                           </c:if>
                           <c:if test="${user.statusUser==0}">
                               <form onsubmit="return(confirmUnlockUser())" action="/managers?action=unLockUser&idUser=${user.idUser}" method="post">
                               </c:if>
                           <c:choose>
                            <c:when test="${user.statusUser ==1}">
                                <button type="submit">🚫</button>
                            </c:when>
                            <c:when test="${user.statusUser ==0}">
                                <button type="submit">🔐</button>
                            </c:when>
                        </c:choose>
                       </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>
</body>
<script>
    function confirmDeleteUser(){
        let result = confirm("Are you sure you want to lock this account?");
        if(result)  {
            alert("Account lock successful!");
            return true;
        }
        return false
    }
    function confirmUnlockUser(){
        let result = confirm("Are you sure you want to unlock this account?");
        if(result)  {
            alert("Account Unlock successful!");
            return true;
        }
        return false
    }
</script>
</html>

