//
//  BusinessViewCellTableViewCell.swift
//  Yelp
//
//  Created by samman on 2/13/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var ratingStarImageView: UIImageView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var business: Business! {
        // whenever cell.business is given a NSdictionary
        didSet {
            businessNameLabel.text = business.name
            addressLabel.text = business.address
            thumbImageView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            reviewsCountLabel.text = "\(business.reviewCount)"
            ratingStarImageView.setImageWith(business.ratingImageURL!)
            costLabel.text = "$$"
            distanceLabel.text = business.distance
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // make the thumbnail have curved edges
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
