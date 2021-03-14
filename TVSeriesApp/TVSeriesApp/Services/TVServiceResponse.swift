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
    let total_results: Int
    let total_pages: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case total_results
        case total_pages
    }
}

struct TVResultsList: Decodable {
    
    let poster_path: String
    let popularity: Double
    let id: Int
    let backdrop_path: String
    let vote_average: Double
    let overview: String
    let first_air_date: String
    let origin_country: [String]
    let genre_ids: [Int]
    let original_language: String
    let vote_count: Int
    let name: String
    let original_name: String
    
    enum CodingKeys: String, CodingKey {
        case poster_path
        case popularity
        case id
        case backdrop_path
        case vote_average
        case overview
        case first_air_date
        case origin_country
        case genre_ids
        case original_language
        case vote_count
        case name
        case original_name
    }
}
