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
        let imageUrlString = "https://image.tmdb.org/t/p/w500"+info.poster_path
        posterImageView.image = urlToImage(urlString: imageUrlString)
        titleLabel.text = info.name
    }


    func urlToImage(urlString: String) -> UIImage {
        var imageToShow = UIImage()
        if let imageUrl = URL(string: urlString) {
            let imageData = try! Data(contentsOf: imageUrl)
            if let image = UIImage(data: imageData) {
                imageToShow = image
            }
        }
        return imageToShow
    }

}
