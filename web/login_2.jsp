<%@ page language="java" import="com.lanou.if_02.User" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>登录页面</title>
</head>

<body>

<%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new java.util.Date();
    String time = simpleDateFormat.format(currentTime).toString();   //放到页面的head中}
%>
<%
    //用户名
    String userName = request.getParameter("userName");
    //密码
    String password = request.getParameter("passWord");
    //cmdStr
    String cmdStr = request.getParameter("cmdStr");

    //自定义String数据
    String P = "1";

    if ("post".equals(cmdStr)) {
        if (P.equals(userName) && P.equals(password)) {
            //登录成功
            User user = new User();
            user.setName(userName);
            user.setPassword(password);
            //设置session属性
            request.getSession().setAttribute("user", user);
        } else {
            request.setAttribute("errMsg", "用户名或密码不正确");
        }
    }
%>
<c:set var="isLogin" value="${empty sessionScope.user}"/>
<c:if test="${isLogin}">
    <form id="login" method="post" action="login_2.jsp">
        <input type="hidden" value="post" name="cmdStr">
        <c:if test="${not empty errMsg}">
            <div style="color:red;">${errMsg}</div>
            <c:remove var="errMsg"/>
        </c:if>
        <table>
            <tr>
                <td>用户名:</td>
                <td><input id="userName" name="userName" type="text"></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td><input id="passWord" name="passWord"
                           type="password"></td>
            </tr>
        </table>

        <input type="submit" value="登录">
    </form>
</c:if>
<c:if test="${!isLogin}">
    欢迎 ${user.name},您已经登录成功!

</c:if>


</body>
</html>
