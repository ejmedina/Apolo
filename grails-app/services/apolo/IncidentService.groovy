package apolo


class IncidentService {

    boolean transactional = true
    def getAll(IncidentCommand params) {
        def c = Incident.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.description!=null){
                            like('description', params.description)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(IncidentCommand params) {
        def c = Incident.createCriteria()
         def results = c.get() {
           
                        if(params.description!=null){
                            like('description', params.description)
                        }
                    
            projections{
                count("id")
            }
        }
        return results
    }
}