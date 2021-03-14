//
//  TVSeriesDetailExtension.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

extension TVSeriesDetailViewController {
    
    func configureView() {
        
        guard let backdrop_path = seriesDetail?.backdrop_path else { return }
        let imageUrlString = "https://image.tmdb.org/t/p/w500"+backdrop_path
        posterImageView.image = urlToImage(urlString: imageUrlString)
        nameLabel.text = seriesDetail?.name
        descriptionLabel.text = seriesDetail?.overview
        countryLabel.text = "Country: " + (seriesDetail?.origin_country[0])!
        dateLabel.text = "Air date: " + seriesDetail!.first_air_date
        ratingValueLabel.text = String(seriesDetail!.vote_average) + "/10"
        starRatingView.rating = Float(seriesDetail!.vote_average/2)
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
