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
    <script type="text/javascript" src="<c:url value='/static/js/webix.js' />"></script>
	<link href="<c:url value='/static/css/jquery.dataTables.min.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" href="<c:url value='/static/css/webix.css'/>" type="text/css" charset="utf-8">


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

		  	<div class='header_comment'>Dynamic paging. Loading from DB (sqllite + php)</div>
            		<div id="testA"></div>
            		<div id="paging_here"></div>

            		<script type="text/javascript" charset="utf-8">

            		webix.ready(function(){
            			grida = webix.ui({
            				container:"testA",
            				view:"datatable",
            				columns:[
            					{ id:"package",	header:"Name", 			width:200 },
            					{ id:"section",	header:"Section",		width:120 },
            					{ id:"size",	header:"Size" , 		width:80  },
            					{ id:"architecture",	header:"PC", 	width:60  }
            				],
            				select:"row",
            				navigation:true,
            				autowidth:true, autoheight:true,

            				datafetch:40,
            				loadahead:15,
            				pager:{
            					container:"paging_here",
            					size:10,
            					group:5
            				},
            				url:"http://localhost:8080/textma/teClientRest"
            			});
            		});
            		</script>

            <hr/>
            <h1>TABLE</h1>
			<table id="clientTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
	    		<thead>
		      		<tr>
				        <th>ID</th>
				        <th>Nom</th>
				        <th>Siret</th>
				        <th>Adresse</th>
				        <th>Code postal</th>
				        <th>Ville</th>
				        <th width="100"></th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${clients}" var="client">
					<tr>
						<td>${client.id}</td>
						<td>${client.name}</td>
						<td>${client.siret}</td>
						<td>${client.address}</td>
						<td>${client.codePostal}</td>
						<td>${client.ville}</td>
						<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">factures</a></td>
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
