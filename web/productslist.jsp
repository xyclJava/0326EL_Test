<%@ page import="com.lanou.forEach.GoodsDao" %>
<%@ page import="com.lanou.forEach.Product" %>
<%@ page import="java.util.List" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    List<Product> products = GoodsDao.getAllProducts();
    request.setAttribute("products", products);
%>
<html>
<head>
    <title>商品列表</title>
</head>

<body>
<div style="width:600px;">
    <table border="1" width="80%">
        <!-- 标题信息 -->
        <tr>
            <th>商品名称</th>
            <th>产地</th>
            <th>价格</th>
        </tr>
        <!-- 循环输出商品信息 -->
        <c:forEach var="product" items="${requestScope.products}" varStatus="status">
            <!-- 如果是偶数行，为该行换背景颜色 -->
            <tr <c:if test="${status.index % 2 == 1 }"> style="background-color:rgb(219,241,212);"</c:if>>
                <!-- 商品名称 -->
                <td>
                        ${product.name }
                </td>
                <!-- 产地 -->
                <td>
                        ${product.area }
                </td>
                <!-- 价格 -->
                <td>
                        ${product.price }
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
