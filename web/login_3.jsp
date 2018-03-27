<%@ page language="java" import="com.lanou.choose_04.User" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>登录页面</title>
</head>
<body>
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
            user.setRole("部门经理");
            //设置session属性
            request.getSession().setAttribute("user", user);
        } else {
            request.setAttribute("errMsg", "用户名或密码不正确");
        }
    }
%>
<c:choose>
    <c:when test="${empty user}">
        <form id="login" method="post" action="login_3.jsp">
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
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${user.role eq '总监'}">
                总监页面
            </c:when>
            <c:when test="${user.role eq '部门经理'}">
                部门经理页面
            </c:when>
            <c:otherwise>
                员工页面
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
</body>
</html>
