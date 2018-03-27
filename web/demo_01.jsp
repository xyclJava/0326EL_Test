<%--
  Created by IntelliJ IDEA.
  User: 0504
  Date: 2018/3/26
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>JSTL</title>
</head>
<body>
&lt;相当于<
<a href="#">abc</a>
&lt;a href="#" &gt;
&gt;
<p>${ "<a href='http://www.baidu.com'>百度</a>" }</p>
<c:out escapeXml="false" value="<a href='http://www.baidu.com'>百度</a>"></c:out>
<c:out value="<a href='http://www.baidu.com'>百度</a>"/>

</body>
</html>
