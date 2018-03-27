<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    // 在Servlet或JSP中保存数据
    List names = new ArrayList();
    names.add(0, "LiYang");
    names.add(1, "WangHua");
    request.setAttribute("names", names);

    List p = new ArrayList();
    p.add(0, "xiaowang");
    p.add(1, "laowang");

    request.setAttribute("pO", p);
%>
${pageContext.request.pO[0]}
test:${pO[0] };<br>
test:${pO[1] };<br>

<%--在JSP中访问数据--%>
姓名：${ names[0] }<br/>
姓名：${ names[1] }<br/>
request:${request.p[1] }<br/>
requestScope:${requestScope.p[1] }<br/>



</body>
</html>
