//
//  TVSeriesInteractor.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVSeriesInteractor: TVSeriesInteractorProtocol {
    
    var presenter: TVSeriesPresenter?
    
    func getSeriesListByPage(type: PageType, pageNumber: Int) {
        switch type {
        case .next:
            getSeriesList(pageNumber: pageNumber == 500 ? 1 : pageNumber+1)
        case .previous:
            getSeriesList(pageNumber: pageNumber == 1 ? 500 : pageNumber-1)
        case .last:
            getSeriesList(pageNumber: 499)
        case .first:
            getSeriesList(pageNumber: 1)
        }
    }
    
    func getSeriesList(pageNumber: Int) {
        
        let pageNumberString = String(pageNumber)
        TVSServiceManager.sharedService.requestSeriesList(pageNumber: pageNumberString, completion: {(response, error) -> Void in
            
            DispatchQueue.main.async {
                
                if let results = response {
                    
                    self.presenter?.seriesListRecieved(seriesResult: results, actualPage: pageNumber)
                }
            }
        })
    }
}
