package apolo


class DriverService {

    boolean transactional = true
    def getAll(DriverCommand params) {
        def c = Driver.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.address!=null){
                            like('address', params.address)
                        }
                    
                        if(params.cuil!=null){
                            like('cuil', params.cuil)
                        }
                    
                        if(params.dni!=null){
                            like('dni', params.dni)
                        }
                    
                        if(params.email!=null){
                            like('email', params.email)
                        }
                    
                        if(params.firstName!=null){
                            like('firstName', params.firstName)
                        }
                    
                        if(params.lastName!=null){
                            like('lastName', params.lastName)
                        }
                    
                        if(params.middleName!=null){
                            like('middleName', params.middleName)
                        }
                    
                        if(params.phone!=null){
                            like('phone', params.phone)
                        }
                    
                        if(params.status!=null){
                            like('status', params.status)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(DriverCommand params) {
        def c = Driver.createCriteria()
         def results = c.get() {
           
                        if(params.address!=null){
                            like('address', params.address)
                        }
                    
                        if(params.cuil!=null){
                            like('cuil', params.cuil)
                        }
                    
                        if(params.dni!=null){
                            like('dni', params.dni)
                        }
                    
                        if(params.email!=null){
                            like('email', params.email)
                        }
                    
                        if(params.firstName!=null){
                            like('firstName', params.firstName)
                        }
                    
                        if(params.lastName!=null){
                            like('lastName', params.lastName)
                        }
                    
                        if(params.middleName!=null){
                            like('middleName', params.middleName)
                        }
                    
                        if(params.phone!=null){
                            like('phone', params.phone)
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