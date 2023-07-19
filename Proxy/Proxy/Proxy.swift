

import Foundation


var cacheData: Data? = nil

class Proxy: LoadServiceProtocol {

    private var service: LoadServiceProtocol
    
    init(service: LoadServiceProtocol) {
        self.service = service
    }
    
    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        if cacheData == nil {
            service.loadImage(url: url) { (data, responce, error) in
                cacheData = data
                completion(data, responce, error)
            }
        } else {
            completion(cacheData, nil, nil)
        }
    }
}
