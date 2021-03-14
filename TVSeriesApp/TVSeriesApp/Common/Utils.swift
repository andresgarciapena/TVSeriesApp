//
//  Utils.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 14/03/2021.
//

import UIKit

enum PageType {
    case next
    case previous
    case last
    case first
}

class Utils {
    
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
