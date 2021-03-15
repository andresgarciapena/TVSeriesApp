//
//  TVSeriesAppTests.swift
//  TVSeriesAppTests
//
//  Created by Andres Garcia on 12/03/2021.
//

import XCTest
import Alamofire
@testable import TVSeriesApp

class TVSeriesAppTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidSeriesPopularPage1CallToApi() {
        
        let url = "https://api.themoviedb.org/3/tv/popular?api_key=c6aeee577586ba38e487b74dfede5deb&language=en-EN&page=1"
        
        let request = AF.request(url)
        
        request.responseDecodable(of: TVServiceResponse.self) { (response) in
          guard let _ = response.value else { return }
            
            if let statusCode = response.response?.statusCode {
                if statusCode == 200 {
                    XCTAssert(statusCode == 200)
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
    }
}
