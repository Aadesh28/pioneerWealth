
import UIKit

typealias completionBlock = (Data?, URLResponse?, Error?) -> ()

class ApiHandeler
{
    class func callAPi(urlString  : String, parameters : [String : String], httpMethod : String, completionBlock : @escaping completionBlock){
        
        let urlRequest  = getRequestWithParametersUrlString(strUrl: urlString, parameters: parameters, httpMethod: httpMethod)
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            completionBlock(data, response, error)
            }.resume()
        
    }
    
    
    //By default post method
    //request created in this method
    class func getRequestWithParametersUrlString(strUrl : String, parameters : [String : String], httpMethod : String = "POST") -> URLRequest
    {
        //Make firststrUrl url from this queryStringParam using URLComponents
        var urlComponent = URLComponents(string: strUrl)!
        let queryItems = parameters.map  { URLQueryItem(name: $0.key, value: $0.value) }
        urlComponent.queryItems = queryItems
        
        //Now make `URLRequest` and set body and headers with it
        
        var request = URLRequest(url: urlComponent.url!)
        request.httpMethod = httpMethod
        //request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
        
        print(request)
        return request
    }
    
    
    
}
