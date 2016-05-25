//
//  RestaurantCell.swift
//  Awesome Restaurants
//
//  Created by Daniel J Janiak on 5/25/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(image: UIImage, text: String) {
        cellImage.image = image
        cellText.text = text
    }
    

}
