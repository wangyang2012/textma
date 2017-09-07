<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Agenda</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/calendar.css' />" rel="stylesheet"></link>


	<link href="<c:url value='/static/js/fullcalendar-3.4.0/fullcalendar.min.css'/>" rel='stylesheet' />
    <link href="<c:url value='/static/js/fullcalendar-3.4.0/fullcalendar.print.min.css'/>" rel='stylesheet' media='print' />
    <script src="<c:url value='/static/js/fullcalendar-3.4.0/lib/moment.min.js'/>"></script>
    <script src="<c:url value='/static/js/fullcalendar-3.4.0/lib/jquery.min.js'/>"></script>
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
	<div class="generic-container">

	 		<div id='script-warning'>
            		<code>php/get-events.php</code> must be running.
            	</div>

            	<div id='loading'>loading...</div>

            	<div id='calendar'></div>
   	</div>
<!--
   	<h2>Google Calendar </h2>

   	<div id='googleCalendar'></div>

   	<h2>Google Calendar IFrame</h2>
   	<iframe src="https://calendar.google.com/calendar/embed?src=k04ckq8c810v75q89cm1q1e4nk%40group.calendar.google.com&ctz=Europe/Paris" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
-->
</body>
</html>