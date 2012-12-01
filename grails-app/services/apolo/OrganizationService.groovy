package apolo


class OrganizationService {

    boolean transactional = true
    def getAll(OrganizationCommand params) {
        def c = Organization.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.name!=null){
                            like('name', params.name)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(OrganizationCommand params) {
        def c = Organization.createCriteria()
         def results = c.get() {
           
                        if(params.name!=null){
                            like('name', params.name)
                        }
                    
            projections{
                count("id")
            }
        }
        return results
    }
}