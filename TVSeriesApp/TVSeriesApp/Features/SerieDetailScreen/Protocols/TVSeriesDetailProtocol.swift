//
//  TVSeriesDetailProtocol.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

protocol TVSeriesDetailProtocol {
    
    var viewRef: TVSeriesDetailViewController? {get set}
    var router: TVSeriesDetailRouter? {get set}
    var interactor: TVSeriesDetailInteractor? {get set}
    
    func viewDidLoad()
    func viewWillAppear(animated: Bool, navigationController: UINavigationController?)
}

protocol TVSeriesDetailRouterProtocol {
    
}

protocol TVSeriesDetailInteractorProtocol {
    
    var presenter: TVSeriesDetailPresenter? {get set}
}
