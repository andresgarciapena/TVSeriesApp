//
//  TVSeriesPresenter.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVSeriesPresenter: TVSeriesProtocol {
    
    var viewRef: TVSeriesListViewController?
    var router: TVSeriesRouter?
    var interactor: TVSeriesInteractor?
    
    func viewDidLoad() {
        
        TVSeriesRouter.configureComponents(presenter: self)
        viewRef?.configureView()
    }
    
    func viewWillAppear(animated: Bool, navigationController: UINavigationController?) {
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func getSeriesList(type: PageType) {
        
        guard let actualPage = viewRef?.actualPage else { return }
        interactor?.getSeriesListByPage(type: type, pageNumber: actualPage)
    }
    
    func seriesListRecieved(seriesResult: TVServiceResponse, actualPage: Int) {
        
        viewRef?.seriesListRecieved = seriesResult
        viewRef?.actualPage = actualPage
        viewRef?.collectionView.reloadData()
    }
    
    func navigationSeriesDetailView(seriesDetail: TVResultsList?) {
        
        guard let sourceController = viewRef else { return }
        router?.goToSeriesDetailView(seriesDetail: seriesDetail, fromController: sourceController)
    }
}
