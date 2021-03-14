//
//  TVServiceManager.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import Foundation
import Alamofire

class TVSServiceManager {
    
    static let sharedService = TVSServiceManager()
    
    func requestSeriesList(pageNumber: String, completion: @escaping (TVServiceResponse?, Error?) -> Void) {
        
        let apiUrl = URLConstants.apiUrl + URLConstants.apiKey + URLConstants.lenguageAndPageString + pageNumber
        
        let request = AF.request(apiUrl)

        request.responseDecodable(of: TVServiceResponse.self) { (response) in
          guard let result = response.value else { return }
            completion(result, nil)
        }
    }
}

