//
//  TVSeriesListExtension.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

extension TVSeriesListViewController {
    
    func configureView() {
        
        updateActualPage()
        presenter.getSeriesList(type: .first)
        collectionView.register(UINib(nibName: CellNames.tvCollectionCell, bundle: nil), forCellWithReuseIdentifier: CellNames.tvCollectionCell)
        collectionView.reloadData()
    }
    
    func updateActualPage() {
        
        actualPageLabel.text = String(actualPage)
    }
}

extension TVSeriesListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let list = seriesListRecieved?.results {
            return list.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellNames.tvCollectionCell, for: indexPath) as! TVCollectionViewCell
        if let serie = seriesListRecieved?.results[indexPath.row] {
            cell.setTVSeriesInformation(info: serie)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let serie = seriesListRecieved?.results[indexPath.row] else { return }
        presenter.navigationSeriesDetailView(seriesDetail: serie)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width/2 - 10, height: 320)
    }
}
