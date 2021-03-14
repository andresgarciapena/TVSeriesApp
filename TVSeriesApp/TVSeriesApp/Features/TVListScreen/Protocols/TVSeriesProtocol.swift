//
//  TVSeriesProtocol.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

protocol TVSeriesProtocol {
    
    var viewRef: TVSeriesListViewController? {get set}
    var router: TVSeriesRouter? {get set}
    var interactor: TVSeriesInteractor? {get set}
    
    func viewDidLoad()
    func viewWillAppear(animated: Bool, navigationController: UINavigationController?)
}

protocol TVSeriesRouterProtocol {
    
    func goToSeriesDetailView(seriesDetail: TVResultsList?, fromController: TVSeriesListViewController)
}

protocol TVSeriesInteractorProtocol {
    
    var presenter: TVSeriesPresenter? {get set}
    
    func getSeriesListByPage(type: PageType, pageNumber: Int)
    func getSeriesList(pageNumber: Int)
}
