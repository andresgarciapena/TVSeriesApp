//
//  TVSeriesDetailViewController.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

class TVSeriesDetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var presenter: TVSeriesDetailPresenter = TVSeriesDetailPresenter()
    
    var seriesDetail: TVResultsList?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewRef = self
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewWillAppear(animated: animated, navigationController: navigationController)
    }
}
