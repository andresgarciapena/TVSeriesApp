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
}
