

<%@ page import="apolo.Trip" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'trip.label', default: 'Trip')}" />
<title><g:message code="default.show.label" args="[entityName]"
		default="Ver Trip" />
</title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		
		<div class="body">
			<h1>
				<g:message code="default.show.label" args="[entityName]"
					default="Ver Trip" />
			</h1>
			<g:if test="${flash.message}">
				<div class="notice">${flash.message}</div>
			</g:if>
				<div class="nav">
				<button class="selected"
					onclick="javascript:window.location.replace(${createLink(uri: '/')})">
					<i class="home"></i><a class="home" href="${createLink(uri: '/')}">Home</a>
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="list"/>')">
					<i class="user"></i><g:message code="default.list.label" args="[entityName]"
						default="Listado Trip" />
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
					<i class="user"></i><g:message code="default.new.label" args="[entityName]"
							default="Nuevo Trip" />
				</button>
			</div>
			
			<div class="dialog">
				<table class="listings">
					<thead>
						<tr class="prop">
							<th valign="top" class="name">Name:</th>

							<th valign="top" class="value">Value:</th>

						</tr>
					</thead>
					<tbody>

						
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'id')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Arrival:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'arrival')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Coordinates:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'coordinates')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Departure:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'departure')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Distance Covered:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'distanceCovered')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Duration:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:tripInstance, field:'duration')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">End Date:</td>
                            
                              <td><fmt:dateFormat value="${tripInstance.endDate}" format="dd/MM/yyyy"/></td>
			   
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Estimated End Date:</td>
                            
                              <td><fmt:dateFormat value="${tripInstance.estimatedEndDate}" format="dd/MM/yyyy"/></td>
			   
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Start Date:</td>
                            
                              <td><fmt:dateFormat value="${tripInstance.startDate}" format="dd/MM/yyyy"/></td>
			   
                        </tr>
                    
					</tbody>
					<tfoot>
						<tr>
							<th></th>
							<th></th>
						</tr>
					</tfoot>
				</table>
			</div>
			<div class="buttons">
				<g:form>
					<input type="hidden" name="id" value="${tripInstance?.id}" />
					<span class="button"><g:actionSubmit class="edit"
							action="edit"
							value="${message(code: 'default.button.edit.label', default: 'Modificar')}" />
					</span>
					<span class="button"><g:actionSubmit class="delete"
							action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Borrar')}"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</span>

				</g:form>
			</div>
		</div>
	</div>
</body>
</html>
