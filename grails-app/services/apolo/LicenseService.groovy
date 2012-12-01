package apolo


class LicenseService {

    boolean transactional = true
    def getAll(LicenseCommand params) {
        def c = License.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.type!=null){
                            like('type', params.type)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(LicenseCommand params) {
        def c = License.createCriteria()
         def results = c.get() {
           
                        if(params.type!=null){
                            like('type', params.type)
                        }
                    
            projections{
                count("id")
            }
        }
        return results
    }
}