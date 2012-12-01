package apolo


class VehicleService {

    boolean transactional = true
    def getAll(VehicleCommand params) {
        def c = Vehicle.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.brand!=null){
                            like('brand', params.brand)
                        }
                    
                        if(params.fuelType!=null){
                            like('fuelType', params.fuelType)
                        }
                    
                        if(params.licenceRequired!=null){
                            like('licenceRequired', params.licenceRequired)
                        }
                    
                        if(params.model!=null){
                            like('model', params.model)
                        }
                    
                        if(params.status!=null){
                            like('status', params.status)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(VehicleCommand params) {
        def c = Vehicle.createCriteria()
         def results = c.get() {
           
                        if(params.brand!=null){
                            like('brand', params.brand)
                        }
                    
                        if(params.fuelType!=null){
                            like('fuelType', params.fuelType)
                        }
                    
                        if(params.licenceRequired!=null){
                            like('licenceRequired', params.licenceRequired)
                        }
                    
                        if(params.model!=null){
                            like('model', params.model)
                        }
                    
                        if(params.status!=null){
                            like('status', params.status)
                        }
                    
            projections{
                count("id")
            }
        }
        return results
    }
}