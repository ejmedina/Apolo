<%@ page import="apolo.Vehicle" %>



<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'brand', 'error')} ">
	<label for="brand">
		<g:message code="vehicle.brand.label" default="Brand" />
		
	</label>
	<g:textField name="brand" value="${vehicleInstance?.brand}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="vehicle.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" value="${fieldValue(bean: vehicleInstance, field: 'cargo')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'foodAble', 'error')} ">
	<label for="foodAble">
		<g:message code="vehicle.foodAble.label" default="Food Able" />
		
	</label>
	<g:checkBox name="foodAble" value="${vehicleInstance?.foodAble}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'freezerAble', 'error')} ">
	<label for="freezerAble">
		<g:message code="vehicle.freezerAble.label" default="Freezer Able" />
		
	</label>
	<g:checkBox name="freezerAble" value="${vehicleInstance?.freezerAble}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'fuelType', 'error')} ">
	<label for="fuelType">
		<g:message code="vehicle.fuelType.label" default="Fuel Type" />
		
	</label>
	<g:textField name="fuelType" value="${vehicleInstance?.fuelType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'height', 'error')} ">
	<label for="height">
		<g:message code="vehicle.height.label" default="Height" />
		
	</label>
	<g:textField name="height" value="${fieldValue(bean: vehicleInstance, field: 'height')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'lenght', 'error')} ">
	<label for="lenght">
		<g:message code="vehicle.lenght.label" default="Lenght" />
		
	</label>
	<g:textField name="lenght" value="${fieldValue(bean: vehicleInstance, field: 'lenght')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'licenceRequired', 'error')} ">
	<label for="licenceRequired">
		<g:message code="vehicle.licenceRequired.label" default="Licence Required" />
		
	</label>
	<g:textField name="licenceRequired" value="${vehicleInstance?.licenceRequired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'model', 'error')} ">
	<label for="model">
		<g:message code="vehicle.model.label" default="Model" />
		
	</label>
	<g:textField name="model" value="${vehicleInstance?.model}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="vehicle.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${vehicleInstance?.status}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'weight', 'error')} ">
	<label for="weight">
		<g:message code="vehicle.weight.label" default="Weight" />
		
	</label>
	<g:textField name="weight" value="${fieldValue(bean: vehicleInstance, field: 'weight')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'wide', 'error')} ">
	<label for="wide">
		<g:message code="vehicle.wide.label" default="Wide" />
		
	</label>
	<g:textField name="wide" value="${fieldValue(bean: vehicleInstance, field: 'wide')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'year', 'error')} ">
	<label for="year">
		<g:message code="vehicle.year.label" default="Year" />
		
	</label>
	<g:textField name="year" value="${fieldValue(bean: vehicleInstance, field: 'year')}" />
</div>

