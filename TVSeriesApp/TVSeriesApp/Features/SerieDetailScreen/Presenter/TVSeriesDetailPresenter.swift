//
//  TVSeriesDetailPresenter.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

class TVSeriesDetailPresenter: TVSeriesDetailProtocol {
    
    var viewRef: TVSeriesDetailViewController?
    var router: TVSeriesDetailRouter?
    var interactor: TVSeriesDetailInteractor?
    
    func viewDidLoad() {
        
        TVSeriesDetailRouter.configureComponents(presenter: self)
        viewRef?.configureView()
    }
    
    func viewWillAppear(animated: Bool, navigationController: UINavigationController?) {
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.layoutIfNeeded()
    }
}
