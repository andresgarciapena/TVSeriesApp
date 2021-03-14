//
//  TVSeriesListViewController.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVSeriesListViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var actualPageLabel: UILabel!
    
    var presenter: TVSeriesPresenter = TVSeriesPresenter()
    
    var seriesListRecieved: TVServiceResponse?
    var actualPage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewRef = self
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewWillAppear(animated: animated, navigationController: navigationController)
    }
    
    @IBAction func nextPageButtonTapped(_ sender: Any) {
        presenter.getSeriesList(type: .next)
    }
    
    @IBAction func previousPageButtonTapped(_ sender: Any) {
        presenter.getSeriesList(type: .previous)
    }
    
    @IBAction func showLastPageButtonTapped(_ sender: Any) {
        presenter.getSeriesList(type: .last)
    }
    
    @IBAction func showFirstPageButtonTapped(_ sender: Any) {
        presenter.getSeriesList(type: .first)
    }
}
