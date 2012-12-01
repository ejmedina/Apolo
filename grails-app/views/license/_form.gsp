<%@ page import="apolo.License" %>



<div class="fieldcontain ${hasErrors(bean: licenseInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="license.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${licenseInstance?.type}" />
</div>

