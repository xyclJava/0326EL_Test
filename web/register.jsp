<%--
  Created by IntelliJ IDEA.
  User: 0504
  Date: 2018/3/26
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form id="regFrm" action="UserServlet" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input id="userName" name="userName" type="text"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input id="password" name="password" type="password"></td>
        </tr>
        <tr>
            <td>业余爱好:</td>
            <td>
                <input name="habit" type="checkbox" value="Reading">看书
                <input name="habit" type="checkbox" value="Game">玩游戏
                <input name="habit" type="checkbox" value="Travelling">旅游
                <input name="habit" type="checkbox" value="Swimming">游泳
                <input name="habit" type="checkbox" value="TV">看电视
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>


</body>
</html>
