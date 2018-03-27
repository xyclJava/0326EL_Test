<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    
    <title>使用JSTL设置变量</title>

  </head>
  
  <body>
  	<!-- 设置之前应该是空值 -->
    	设置变量之前的值是：msg=   <c:out value="${msg}" default="null"/><br>
    	<!-- 给变量msg设值 -->
    	<c:set var="msg" value="Hello Everybody!" scope="page"></c:set>
    	
    	<!-- 此时msg的值应该是上面设置的"Hello Everybody!" -->
    	设置新值以后：msg=<c:out value="${msg}"></c:out><br>
    	<!-- 把 msg变量从page范围内移除-->
    	<c:remove var="msg" scope="page"/>
    	<!-- 此时msg的值应该显示null -->
    	移除变量msg以后：msg=<c:out value="${msg}" default="null"></c:out>
  </body>
</html>
