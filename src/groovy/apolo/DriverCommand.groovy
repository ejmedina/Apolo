
package apolo

class DriverCommand {
   
                String address
                String cuil
                String dni
                String email
                String firstName
                String lastName
                String middleName
                String phone
                String status
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
               
                address=params?.address?params.address:null
                cuil=params?.cuil?params.cuil:null
                dni=params?.dni?params.dni:null
                email=params?.email?params.email:null
                firstName=params?.firstName?params.firstName:null
                lastName=params?.lastName?params.lastName:null
                middleName=params?.middleName?params.middleName:null
                phone=params?.phone?params.phone:null
                status=params?.status?params.status:null

     }
}

