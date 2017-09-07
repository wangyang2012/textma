<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<script src="<c:url value='/static/js/jquery.js'/>"></script>

	<script>
	    $(document).ready(function(){
            $("#resetFormBtn").click(function(){
                $("#msgError").hide();
                $("#loginForm").reset();
            });
        });
	</script>
</head>

<body>
    <c:set var="page" value="login"/>
    <%@include file="header.jsp" %>

    <c:if test="${msgError != null && msgError != ''}">
        <div id="msgError" class="alert alert-danger">
            ${msgError}
        </div>
    </c:if>
    <div class="col-md-12 login-form">
        <form id="loginForm" action="login" method="POST">
            <div class="form-group row">
                <label class="col-md-5">Login</label>
                <input class="col-md-7" type="text" name="login" class="form-control">
            </div>
            <div class="form-group row">
                <label class="col-md-5">Mot de passe</label>
                <input class="col-md-7" type="password" name="mdp" class="form-control">
            </div>
            <button type="button" class="btn btn-default reset-button pull-right m-1" id="resetFormBtn">Effacer</button>
            <button type="submit" class="btn login-button pull-right m-1">Se connecter</button>
        </form>
    </div>
</body>
</html>