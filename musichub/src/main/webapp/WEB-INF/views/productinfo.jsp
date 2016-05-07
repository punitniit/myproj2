<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="css" value="/resources/bootstrap/css"/>
<c:url var="js" value="/resources/bootstrap/js"/>
<c:url var="img" value="/resources/images/"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
${prod.product_id}<br><br>
${prod.product_name}<br><br>
${prod.product_price}<br><br>
${prod.product_brand}<br><br>
${prod.product_category}<br><br>
</body>
</html>