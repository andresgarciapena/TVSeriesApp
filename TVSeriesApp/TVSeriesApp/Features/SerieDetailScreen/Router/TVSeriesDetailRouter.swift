//
//  TVSeriesDetailRouter.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

class TVSeriesDetailRouter {
    
    class func configureComponents(presenter: TVSeriesDetailPresenter) {
        
        presenter.router = TVSeriesDetailRouter()
        presenter.interactor = TVSeriesDetailInteractor()
        presenter.interactor?.presenter = presenter
    }
}

extension TVSeriesDetailRouter: TVSeriesDetailRouterProtocol {
    
}
