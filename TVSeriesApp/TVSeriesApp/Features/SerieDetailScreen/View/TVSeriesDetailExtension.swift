//
//  TVSeriesDetailExtension.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

extension TVSeriesDetailViewController {
    
    func configureView() {
        
        guard let backdrop_path = seriesDetail?.backdrop_path, let origin_country = seriesDetail?.origin_country[0], let air_date = seriesDetail?.first_air_date else { return }
        let imageUrlString = URLConstants.imagesUrlPath+backdrop_path
        posterImageView.image = Utils().urlToImage(urlString: imageUrlString)
        nameLabel.text = seriesDetail?.name
        descriptionLabel.text = seriesDetail?.overview
        countryLabel.text = "Country: " + origin_country
        dateLabel.text = "Air date: " + air_date
        ratingValueLabel.text = String(seriesDetail!.vote_average) + "/10"
        starRatingView.rating = Float(seriesDetail!.vote_average/2)
        starRatingView.starRounding = .ceilToHalfStar
    }
}
