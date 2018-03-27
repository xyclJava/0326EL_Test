<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 0504
  Date: 2018/3/26
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //     在Servlet或JSP中准备数据
    Map<String, String> map = new HashMap<String, String>();
    map.put("tom", "美国");
    map.put("lily", "英国");
    map.put("jack", "中国");
    request.setAttribute("map", map);

%>
<%--在JSP中展示数据--%>

<c:forEach items="${requestScope.map}" var="entry">
    ${ entry.key }
    ${ entry.value }<p>
    </c:forEach>

<c:
    <c:forEach begin="1" end="5" step="2">
        <c:out value="*"></c:out>
    </c:forEach>


</body>
</html>
