<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Agenda</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/calendar.css' />" rel="stylesheet"></link>


	<link href="<c:url value='/static/js/fullcalendar-3.4.0/fullcalendar.min.css'/>" rel='stylesheet' />
    <link href="<c:url value='/static/js/fullcalendar-3.4.0/fullcalendar.print.min.css'/>" rel='stylesheet' media='print' />
    <script src="<c:url value='/static/js/fullcalendar-3.4.0/lib/moment.min.js'/>"></script>
    <script src="<c:url value='/static/js/fullcalendar-3.4.0/lib/jquery.min.js'/>"></script>
    <script src="<c:url value='/static/js/bootstrap.js'/>"></script>
    <script src="<c:url value='/static/js/fullcalendar-3.4.0/fullcalendar.min.js'/>"></script>
    <script type='text/javascript' src="<c:url value='/static/js/fullcalendar-3.4.0/gcal.js'/>"></script>
    <script>

    	$(document).ready(function() {

    		$('#calendar').fullCalendar({
    			header: {
    				left: 'prev,next today',
    				center: 'title',
    				right: 'month,agendaWeek,agendaDay,listWeek'
    			},
    			defaultDate: '2017-09-12',
    			editable: true,
    			navLinks: true, // can click day/week names to navigate views
    			eventLimit: true, // allow "more" link when too many events

    			events: [
                				{
                					title: 'All Day Event',
                					start: '2017-09-01',
                					color: 'purple'
                				},
                				{
                					title: 'Long Event',
                					start: '2017-09-07',
                					end: '2017-09-10'
                				},
                				{
                					id: 999,
                					title: 'Repeating Event',
                					start: '2017-09-09T16:00:00',
                                    color: 'red'
                				},
                				{
                					id: 999,
                					title: 'Repeating Event',
                					start: '2017-09-16T16:00:00',
                					color: 'red'
                				},
                				{
                					title: 'Conference',
                					start: '2017-09-11',
                					end: '2017-09-13'
                				},
                				{
                					title: 'Meeting',
                					start: '2017-09-12T10:30:00',
                					end: '2017-09-12T12:30:00'
                				},
                				{
                					title: 'Lunch',
                					start: '2017-09-12T12:00:00',
                					color: '#378006'
                				},
                				{
                					title: 'Meeting',
                					start: '2017-09-12T14:30:00'
                				},
                				{
                					title: 'Happy Hour',
                					start: '2017-09-12T17:30:00'
                				},
                				{
                					title: 'Dinner',
                					start: '2017-09-12T20:00:00'
                				},
                				{
                					title: 'Birthday Party',
                					start: '2017-09-13T07:00:00',
                					color: 'yellow'
                				},
                				{
                					title: 'Click for Google',
                					url: 'http://google.com/',
                					start: '2017-09-28'
                				}
                			],
    			loading: function(bool) {
    				$('#loading').toggle(bool);
    			}
    		});

    	});

    	 $('#googleCalendar').fullCalendar({
                googleCalendarApiKey: 'AIzaSyDluvhoQ577vi5ehZXJKrn0EhzicL5tfho',
                events: {
                    googleCalendarId: 'k04ckq8c810v75q89cm1q1e4nk@group.calendar.google.com'
                }
            });

    </script>
    <style>

    	body {
    		margin: 0;
    		padding: 0;
    		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    		font-size: 14px;
    	}

    	#script-warning {
    		display: none;
    		background: #eee;
    		border-bottom: 1px solid #ddd;
    		padding: 0 10px;
    		line-height: 40px;
    		text-align: center;
    		font-weight: bold;
    		font-size: 12px;
    		color: red;w
    	}

    	#loading {
    		display: none;
    		position: absolute;
    		top: 10px;
    		right: 10px;
    	}

    	#calendar {
    		max-width: 900px;
    		margin: 40px auto;
    		padding: 0 10px;
    	}

    </style>
</head>

<body>
    <c:set var="page" value="delivery"/>
    <%@include file="../header.jsp" %>
    <div class="generic-container row">
        <div id='calendar' class="col-md-8"></div>
        <div class='col-md-4'>
            <h4>Livraisons d'aujourd'hui</h4>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            Heure
                        </th>
                        <th>
                            Client
                        </th>
                        <th>
                            Etat
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-success">
                        <td>09:38</td>
                        <td>Resto Michelin 3 étoiles</td>
                        <td>Livré</td>
                    </tr>
                    <tr class="table-success">
                        <td>10:00</td>
                        <td>Pizzaria du coin</td>
                        <td>Livré</td>
                    </tr>
                    <tr class="table-danger">
                        <td>10:45</td>
                        <td>Hotel AA</td>
                        <td>En cours</td>
                    </tr>
                    <tr class="table-info">
                        <td>14:30</td>
                        <td>Salle de fête Vincenne</td>
                        <td>En attente</td>
                    </tr>
                    <tr class="table-info">
                        <td>15:00</td>
                        <td>Château du Fontainebleau</td>
                        <td>En attente</td>
                    </tr>
                    <tr class="table-info">
                        <td>19:50</td>
                        <td>Charles de Gaule</td>
                        <td>A confirmer</td>
                    </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#deliveryModal">Nouvelle livraison</button>
        </div>
    </div>


    <!-- Modal -->
      <div class="modal fade" id="deliveryModal" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Nouvelle livraison</h4>
              <button type="button" class="close pull-right" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">

              <div class="container">
                  <div class="row">
                      <div class='col-sm-6'>
                          <div class="form-group">
                              <div class='input-group date' id='datetimepicker1'>
                                  <input type='text' class="form-control" />
                                  <span class="input-group-addon">
                                      <span class="glyphicon glyphicon-calendar"></span>
                                  </span>
                              </div>
                          </div>
                      </div>
                      <script type="text/javascript">
                          $(function () {
                              $('#datetimepicker1').datetimepicker();
                          });
                      </script>
                  </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>

        </div>
      </div>

    </div>
<!--
   	<h2>Google Calendar </h2>

   	<div id='googleCalendar'></div>

   	<h2>Google Calendar IFrame</h2>
   	<iframe src="https://calendar.google.com/calendar/embed?src=k04ckq8c810v75q89cm1q1e4nk%40group.calendar.google.com&ctz=Europe/Paris" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
-->
</body>
</html>