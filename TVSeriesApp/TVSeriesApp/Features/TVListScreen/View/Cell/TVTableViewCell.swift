//
//  TVTableViewCell.swift
//  TVSeriesApp
//
//  Created by Andres Garcia on 12/03/2021.
//

import UIKit

class TVTableViewCell: UITableViewCell {

    @IBOutlet weak var tvImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
