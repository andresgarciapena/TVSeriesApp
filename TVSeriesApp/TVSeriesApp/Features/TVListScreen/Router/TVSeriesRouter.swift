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
    
    func navigateToSeriesDetailView(seriesDetail: TVResultsList?, classRef: UIViewController) {
        
        let vc = TVSeriesDetailViewController(nibName: "TVSeriesDetailViewController", bundle: nil)
        vc.seriesDetail = seriesDetail
        guard let navigationController = classRef.navigationController else { return }
        navigationController.pushViewController(vc, animated: true)
    }
}

extension TVSeriesRouter: TVSeriesRouterProtocol {
    
    func goToSeriesDetailView(seriesDetail: TVResultsList?, fromController: TVSeriesListViewController) {
            
        navigateToSeriesDetailView(seriesDetail: seriesDetail, classRef: fromController)
    }
}
