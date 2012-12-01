package apolo


import org.codehaus.groovy.grails.commons.ConfigurationHolder
class VehicleController {
    def exportService
   
    def vehicleService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
                 def vehicleInstance = new VehicleCommand()

        if(vehicleInstance.validateAllParams(params)!=""){
           flash.message=vehicleInstance.validateAllParams(params)
        }
        vehicleInstance.commandSetParameters(params)
        def count=vehicleService.getAllCount(vehicleInstance)
        if(params?.format && params.format != "html")vehicleInstance.max=count
        def results=vehicleService.getAll(vehicleInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ vehicleInstanceList:results, vehicleInstanceTotal:count ,vehicleInstance:vehicleInstance]
    }

    def show = {
        def vehicleInstance = Vehicle.get( params.id )

        if(!vehicleInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
            redirect(action:list)
        }
        else { return [ vehicleInstance : vehicleInstance ] }
    }

    def delete = {
        def vehicleInstance = Vehicle.get( params.id )
        if(vehicleInstance) {
            try {
                vehicleInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def vehicleInstance = Vehicle.get( params.id )

        if(!vehicleInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ vehicleInstance : vehicleInstance ]
        }
    }

    def update = {
        def vehicleInstance = Vehicle.get( params.id )
        if(vehicleInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(vehicleInstance.version > version) {
                 
                    vehicleInstance.errors.rejectValue("version", "vehicle.optimistic.locking.failure", "Otro usuario esta modificando  Vehicle mientras usted lo esta editando.")
                    render(view:'edit',model:[vehicleInstance:vehicleInstance])
                    return
                }
            }
            vehicleInstance.properties = params
            if(!vehicleInstance.hasErrors() && vehicleInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), vehicleInstance.id])}"
                redirect(action:show,id:vehicleInstance.id)
            }
            else {
                render(view:'edit',model:[vehicleInstance:vehicleInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def vehicleInstance = new Vehicle()
        vehicleInstance.properties = params
        return ['vehicleInstance':vehicleInstance]
    }

    def save = {
        def vehicleInstance = new Vehicle(params)
        if(!vehicleInstance.hasErrors() && vehicleInstance.save()) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), vehicleInstance.id])}"
            redirect(action:show,id:vehicleInstance.id)
        }
        else {
            render(view:'create',model:[vehicleInstance:vehicleInstance])
        }
    }
     def search = {
          def vehicleInstance = new VehicleCommand()

        if(vehicleInstance.validateAllParams(params)!=""){
           flash.message=vehicleInstance.validateAllParams(params)
        }
        vehicleInstance.commandSetParameters(params)
        def count=vehicleService.getAllCount(vehicleInstance)
        if(params?.format && params.format != "html")vehicleInstance.max=count
        def results=vehicleService.getAll(vehicleInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ vehicleInstanceList:results, vehicleInstanceTotal:count ,vehicleInstance:vehicleInstance])
      }
 
}
