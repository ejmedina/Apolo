
package apolo

class OrganizationCommand {
   
                String name
    String offset
    String max
    String validateAllParams(Object params){
         String val=""
        /* if(params?.fechAfecd || params?.fechAfech){
            if(!params?.fechAfecd || !params?.fechAfech){
                val=val+"Para filtrar por fecha de afectación debe ingresar desde y hasta /"
            }
         }
         if(params?.fecDesafd || params?.fecDesafh ){
            if(!params?.fecDesafd || !params?.fecDesafh ){
                val=val+"Para filtrar por fecha de desafectación debe ingresar desde y hasta"
            }
         }*/
        return val
     }

     void commandSetParameters(Object params){
            offset=params?.offset?params.offset:"0"
            max=params?.max?params.max:"5"
               
                name=params?.name?params.name:null

     }
}

