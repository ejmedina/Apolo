

<%@ page import="apolo.Trip" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'trip.label', default: 'Trip')}" />
<title><g:message code="default.create.label"
		args="[entityName]" default="Nuevo Trip" /></title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />

		<div class="body">
			<h1></h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tripInstance}">
				<div class="error">
					<g:renderErrors bean="${tripInstance}" as="list" />
				</div>
			</g:hasErrors>

			<div class="nav">
				<button class="selected"
					onclick="javascript:window.location.replace(${createLink(uri: '/')})">
					<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="list"/>')">
					<i class="user"></i>
					<g:message code="default.list.label" args="[entityName]"
						default="Listado Trip" />
				</button>
			</div>
			<section id="backend">
				<g:form action="save" method="post"
					>

					<fieldset>
						<legend>
							<g:message code="default.create.label" args="[entityName]"
								default="Nuevo Trip" />
						</legend>
						
                           <p>
                               
                                    <label for="arrival"><g:message code="trip.arrival.label" default="Arrival" />:</label>
                                
                               
                                    <g:textField name="arrival" value="${tripInstance?.arrival}" />
                              </p>
                        
                           <p>
                               
                                    <label for="coordinates"><g:message code="trip.coordinates.label" default="Coordinates" />:</label>
                                
                               
                                    
                              </p>
                        
                           <p>
                               
                                    <label for="departure"><g:message code="trip.departure.label" default="Departure" />:</label>
                                
                               
                                    <g:textField name="departure" value="${tripInstance?.departure}" />
                              </p>
                        
                           <p>
                               
                                    <label for="distanceCovered"><g:message code="trip.distanceCovered.label" default="Distance Covered" />:</label>
                                
                               
                                    <g:textField name="distanceCovered" value="${fieldValue(bean: tripInstance, field: 'distanceCovered')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="duration"><g:message code="trip.duration.label" default="Duration" />:</label>
                                
                               
                                    <g:textField name="duration" value="${fieldValue(bean: tripInstance, field: 'duration')}" />
                              </p>
                        
                           <p>
                               
                                    <label for="endDate"><g:message code="trip.endDate.label" default="End Date" />:</label>
                                
                               
                                    <g:datePicker name="endDate" precision="day" value="${tripInstance?.endDate}" />
                              </p>
                        
                           <p>
                               
                                    <label for="estimatedEndDate"><g:message code="trip.estimatedEndDate.label" default="Estimated End Date" />:</label>
                                
                               
                                    <g:datePicker name="estimatedEndDate" precision="day" value="${tripInstance?.estimatedEndDate}" />
                              </p>
                        
                           <p>
                               
                                    <label for="startDate"><g:message code="trip.startDate.label" default="Start Date" />:</label>
                                
                               
                                    <g:datePicker name="startDate" precision="day" value="${tripInstance?.startDate}" />
                              </p>
                        
						<p>
							<input type="submit"
								value="${message(code: 'default.button.create.label', default: 'Crear')}">
						</p>
		</div>
		</fieldset>
		</g:form>

		</section>
	</div>
	</div>


</body>
</html>
