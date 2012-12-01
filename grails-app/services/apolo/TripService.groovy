package apolo


class TripService {

    boolean transactional = true
    def getAll(TripCommand params) {
        def c = Trip.createCriteria()
        def results = c.list([offset:params.offset,max:params.max]) {
            and{
           
                        if(params.arrival!=null){
                            like('arrival', params.arrival)
                        }
                    
                        if(params.departure!=null){
                            like('departure', params.departure)
                        }
                    
            }
        }

        return results
    }
    def getAllCount(TripCommand params) {
        def c = Trip.createCriteria()
         def results = c.get() {
           
                        if(params.arrival!=null){
                            like('arrival', params.arrival)
                        }
                    
                        if(params.departure!=null){
                            like('departure', params.departure)
                        }
                    
            projections{
                count("id")
            }
        }
        return results
    }
}