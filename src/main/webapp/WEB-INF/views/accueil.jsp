<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/accueil.css' />" rel="stylesheet"></link>
</head>

<body>
    <c:set var="page" value="accueil"/>
    <%@include file="header.jsp" %>
    <div class="row">
        <a class="col-md-2" href="user/list"><img class="icon" src="<c:url value='/static/images/icons/user.png' />" title="Utilisateurs"></a>
        <a class="col-md-2" href="client/list"><img class="icon" src="<c:url value='/static/images/icons/client.png' />" title="Clients"></a>
        <a class="col-md-2" href=""><img class="icon" src="<c:url value='/static/images/icons/product.png' />" title="Articles"></a>
        <a class="col-md-2" href=""><img class="icon" src="<c:url value='/static/images/icons/command.png' />" title="Commandes"></a>
        <a class="col-md-2" href="delivery/calendar"><img class="icon" src="<c:url value='/static/images/icons/calendar.png' />" title="Livraison"></a>
    </div>
</body>
</html>