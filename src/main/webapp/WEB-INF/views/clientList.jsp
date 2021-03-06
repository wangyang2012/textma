<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Client List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<script type="text/javascript" src="<c:url value='/static/js/jquery.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery.dataTables.min.js' />"></script>
	<link href="<c:url value='/static/css/jquery.dataTables.min.css' />" rel="stylesheet"></link>
	<script>
        $(document).ready(function() {
            $('#clientTable').DataTable();
        } );
	</script>
</head>

<body>
    <c:set var="page" value="client"/>
    <%@include file="header.jsp" %>
	<div class="generic-container">
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Liste des clients</span></div>
			<table id="clientTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
	    		<thead>
		      		<tr>
				        <th>ID</th>
				        <th>Nom</th>
				        <th>Email</th>
				        <th>Adresse</th>
				        <th>Groupe</th>
				        <th width="100"></th>
				        <th width="100"></th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${clients}" var="client">
					<tr>
						<td>${client.id}</td>
						<td>${client.name}</td>
						<td>${client.email}</td>
						<td>${client.address}</td>
						<td>${client.group.name}</td>
						<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
						<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
	 	<div class="well">
	 		<a href="<c:url value='/newclient' />">Nouveau client</a>
	 	</div>
   	</div>
</body>
</html>
