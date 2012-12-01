<%@ page import="apolo.Driver" %>



<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="driver.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${driverInstance?.address}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'cuil', 'error')} ">
	<label for="cuil">
		<g:message code="driver.cuil.label" default="Cuil" />
		
	</label>
	<g:textField name="cuil" value="${driverInstance?.cuil}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'dni', 'error')} ">
	<label for="dni">
		<g:message code="driver.dni.label" default="Dni" />
		
	</label>
	<g:textField name="dni" value="${driverInstance?.dni}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="driver.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${driverInstance?.email}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="driver.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${driverInstance?.firstName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="driver.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${driverInstance?.lastName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="driver.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${driverInstance?.middleName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="driver.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" value="${fieldValue(bean: driverInstance, field: 'mobile')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="driver.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${driverInstance?.phone}" />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="driver.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${driverInstance?.status}" />
</div>

