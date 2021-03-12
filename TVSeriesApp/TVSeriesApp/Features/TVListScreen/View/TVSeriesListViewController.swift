//
//  TVSeriesListViewController.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVSeriesListViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: TVSeriesPresenter = TVSeriesPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewRef = self
        presenter.viewDidLoad()
        
        TVSServiceManager.sharedService.requestMusicList(completion: {(response, error) -> Void in
            
            DispatchQueue.main.async {
                
                if let list = response?.results {
                    
                    print(list[1])
                }
            }
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewWillAppear(animated: animated, navigationController: navigationController)
    }
}
