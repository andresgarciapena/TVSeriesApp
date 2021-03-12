//
//  TVServiceResponse.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import Foundation

struct TVServiceResponse: Decodable {
    
    let page: Int
    let results: [TVResultsList]
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
    }
}

struct TVResultsList: Decodable {
    
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
