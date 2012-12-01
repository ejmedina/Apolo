package apolo


import org.codehaus.groovy.grails.commons.ConfigurationHolder
class LicenseController {
    def exportService
   
    def licenseService
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
                 def licenseInstance = new LicenseCommand()

        if(licenseInstance.validateAllParams(params)!=""){
           flash.message=licenseInstance.validateAllParams(params)
        }
        licenseInstance.commandSetParameters(params)
        def count=licenseService.getAllCount(licenseInstance)
        if(params?.format && params.format != "html")licenseInstance.max=count
        def results=licenseService.getAll(licenseInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
	[ licenseInstanceList:results, licenseInstanceTotal:count ,licenseInstance:licenseInstance]
    }

    def show = {
        def licenseInstance = License.get( params.id )

        if(!licenseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
            redirect(action:list)
        }
        else { return [ licenseInstance : licenseInstance ] }
    }

    def delete = {
        def licenseInstance = License.get( params.id )
        if(licenseInstance) {
            try {
                licenseInstance.delete(flush:true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
                redirect(action:list)
            }
            catch(org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
                redirect(action:show,id:params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
            redirect(action:list)
        }
    }

    def edit = {
        def licenseInstance = License.get( params.id )

        if(!licenseInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
            redirect(action:list)
        }
        else {
            return [ licenseInstance : licenseInstance ]
        }
    }

    def update = {
        def licenseInstance = License.get( params.id )
        if(licenseInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(licenseInstance.version > version) {
                 
                    licenseInstance.errors.rejectValue("version", "license.optimistic.locking.failure", "Otro usuario esta modificando  License mientras usted lo esta editando.")
                    render(view:'edit',model:[licenseInstance:licenseInstance])
                    return
                }
            }
            licenseInstance.properties = params
            if(!licenseInstance.hasErrors() && licenseInstance.save()) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'license.label', default: 'License'), licenseInstance.id])}"
                redirect(action:show,id:licenseInstance.id)
            }
            else {
                render(view:'edit',model:[licenseInstance:licenseInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'license.label', default: 'License'), params.id])}"
            redirect(action:list)
        }
    }

    def create = {
        def licenseInstance = new License()
        licenseInstance.properties = params
        return ['licenseInstance':licenseInstance]
    }

    def save = {
        def licenseInstance = new License(params)
        if(!licenseInstance.hasErrors() && licenseInstance.save()) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'license.label', default: 'License'), licenseInstance.id])}"
            redirect(action:show,id:licenseInstance.id)
        }
        else {
            render(view:'create',model:[licenseInstance:licenseInstance])
        }
    }
     def search = {
          def licenseInstance = new LicenseCommand()

        if(licenseInstance.validateAllParams(params)!=""){
           flash.message=licenseInstance.validateAllParams(params)
        }
        licenseInstance.commandSetParameters(params)
        def count=licenseService.getAllCount(licenseInstance)
        if(params?.format && params.format != "html")licenseInstance.max=count
        def results=licenseService.getAll(licenseInstance)
        if(params?.format && params.format != "html"){
            exportToFile(results)
         }
        render(view:'list', model:[ licenseInstanceList:results, licenseInstanceTotal:count ,licenseInstance:licenseInstance])
      }
 
}
