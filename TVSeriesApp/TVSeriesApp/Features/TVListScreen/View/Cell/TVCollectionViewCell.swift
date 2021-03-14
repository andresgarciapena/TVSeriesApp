//
//  TVCollectionViewCell.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

class TVCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setTVSeriesInformation(info: TVResultsList) {
        let imageUrlString = URLConstants.imagesUrlPath+info.poster_path
        posterImageView.image = Utils().urlToImage(urlString: imageUrlString)
        titleLabel.text = info.name
    }
}
