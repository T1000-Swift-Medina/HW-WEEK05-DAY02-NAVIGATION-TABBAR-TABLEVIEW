//
//  Product.swift
//  cat class 6
//
//  Created by Mohammed Mabruk on 20/03/1443 AH.
//

import UIKit

class Product: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var prod: UILabel!
    @IBOutlet weak var costOf: UILabel!
    
    @IBOutlet weak var Desc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
