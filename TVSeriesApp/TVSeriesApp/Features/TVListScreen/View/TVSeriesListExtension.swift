//
//  TVSeriesListExtension.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

extension TVSeriesListViewController {
    
    func configureView() {
        
        tableView.register(UINib(nibName: "TVTableViewCell", bundle: nil), forCellReuseIdentifier: "TVTableViewCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
    }
}

extension TVSeriesListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVTableViewCell", for: indexPath) as! TVTableViewCell
        cell.titleLabel.text = "Title"
        cell.descriptionLabel.text = "Description"
        return cell
    }
}
