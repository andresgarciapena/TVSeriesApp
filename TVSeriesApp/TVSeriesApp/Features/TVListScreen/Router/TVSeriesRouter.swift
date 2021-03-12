//
//  TVSeriesRouter.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVSeriesRouter {
    
    class func configureComponents(presenter: TVSeriesPresenter) {
        
        presenter.router = TVSeriesRouter()
        presenter.interactor = TVSeriesInteractor()
        presenter.interactor?.presenter = presenter
    }
}

extension TVSeriesRouter: TVSeriesRouterProtocol {
    
}
