//
//  BannerCell.swift
//  Week4Day2.2
//
//  Created by Badr on 26/10/21.
//

import UIKit

class BannerCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Discribtion: UILabel!
    
    @IBOutlet weak var Price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
