

<%@ page import="apolo.Vehicle" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="admin" />
<g:set var="entityName"
	value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
<title><g:message code="default.show.label" args="[entityName]"
		default="Ver Vehicle" />
</title>
</head>
<body>
	<div id="main" role="main">
		<hr class="space" />
		
		<div class="body">
			<h1>
				<g:message code="default.show.label" args="[entityName]"
					default="Ver Vehicle" />
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
						default="Listado Vehicle" />
				</button>
				<button
					onclick="javascript:window.location.replace('<g:createLink action="create"/>')">
					<i class="user"></i><g:message code="default.new.label" args="[entityName]"
							default="Nuevo Vehicle" />
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
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'id')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Brand:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'brand')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Cargo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'cargo')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Food Able:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'foodAble')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Freezer Able:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'freezerAble')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Fuel Type:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'fuelType')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Height:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'height')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Lenght:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'lenght')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Licence Required:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'licenceRequired')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Model:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'model')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Status:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'status')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Weight:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'weight')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Wide:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'wide')}</td>
                          
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Year:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:vehicleInstance, field:'year')}</td>
                          
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
					<input type="hidden" name="id" value="${vehicleInstance?.id}" />
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
