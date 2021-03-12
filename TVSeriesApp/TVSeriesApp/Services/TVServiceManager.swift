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
    
    func requestMusicList(completion: @escaping (TVServiceResponse?, Error?) -> Void) {
        
        let apiKey = "c6aeee577586ba38e487b74dfede5deb"
        let apiUrl = "https://api.themoviedb.org/3/tv/popular?api_key=" + apiKey
        
        let request = AF.request(apiUrl)

        request.responseDecodable(of: TVServiceResponse.self) { (response) in
          guard let result = response.value else { return }
            completion(result, nil)
        }
    }

}

