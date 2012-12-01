package apolo


class DriverController {

	def driverService
	def index = { redirect(action:list,params:params) }

	// the delete, save and update actions only accept POST requests
	static allowedMethods = [delete:'POST', save:'POST', update:'POST']

	def list = {
		def driverInstance = new DriverCommand()

		if(driverInstance.validateAllParams(params)!=""){
			flash.message=driverInstance.validateAllParams(params)
		}
		driverInstance.commandSetParameters(params)
		def count=driverService.getAllCount(driverInstance)
		if(params?.format && params.format != "html")driverInstance.max=count
		def results=driverService.getAll(driverInstance)
		if(params?.format && params.format != "html"){
		}
		[ driverInstanceList:results, driverInstanceTotal:count ,driverInstance:driverInstance]
	}

	def show = {
		def driverInstance = Driver.get( params.id )

		if(!driverInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
			redirect(action:list)
		}
		else { return [ driverInstance : driverInstance ] }
	}

	def delete = {
		def driverInstance = Driver.get( params.id )
		if(driverInstance) {
			try {
				driverInstance.delete(flush:true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
				redirect(action:list)
			}
			catch(org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
				redirect(action:show,id:params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
			redirect(action:list)
		}
	}

	def edit = {
		def driverInstance = Driver.get( params.id )

		if(!driverInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
			redirect(action:list)
		}
		else {
			return [ driverInstance : driverInstance ]
		}
	}

	def update = {
		def driverInstance = Driver.get( params.id )
		if(driverInstance) {
			if(params.version) {
				def version = params.version.toLong()
				if(driverInstance.version > version) {

					driverInstance.errors.rejectValue("version", "driver.optimistic.locking.failure", "Otro usuario esta modificando  Driver mientras usted lo esta editando.")
					render(view:'edit',model:[driverInstance:driverInstance])
					return
				}
			}
			driverInstance.properties = params
			if(!driverInstance.hasErrors() && driverInstance.save()) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'driver.label', default: 'Driver'), driverInstance.id])}"
				redirect(action:show,id:driverInstance.id)
			}
			else {
				render(view:'edit',model:[driverInstance:driverInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])}"
			redirect(action:list)
		}
	}

	def create = {
		def driverInstance = new Driver()
		driverInstance.properties = params
		return ['driverInstance':driverInstance]
	}

	def save = {
		def driverInstance = new Driver(params)
		if(!driverInstance.hasErrors() && driverInstance.save()) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'driver.label', default: 'Driver'), driverInstance.id])}"
			redirect(action:show,id:driverInstance.id)
		}
		else {
			render(view:'create',model:[driverInstance:driverInstance])
		}
	}
	def search = {
		def driverInstance = new DriverCommand()

		if(driverInstance.validateAllParams(params)!=""){
			flash.message=driverInstance.validateAllParams(params)
		}
		driverInstance.commandSetParameters(params)
		def count=driverService.getAllCount(driverInstance)
		if(params?.format && params.format != "html")driverInstance.max=count
		def results=driverService.getAll(driverInstance)
		if(params?.format && params.format != "html"){
			exportToFile(results)
		}
		render(view:'list', model:[ driverInstanceList:results, driverInstanceTotal:count ,driverInstance:driverInstance])
	}

}
