
package apolo

class VehicleCommand {
   
                String brand
                String fuelType
                String licenceRequired
                String model
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
               
                brand=params?.brand?params.brand:null
                fuelType=params?.fuelType?params.fuelType:null
                licenceRequired=params?.licenceRequired?params.licenceRequired:null
                model=params?.model?params.model:null
                status=params?.status?params.status:null

     }
}

