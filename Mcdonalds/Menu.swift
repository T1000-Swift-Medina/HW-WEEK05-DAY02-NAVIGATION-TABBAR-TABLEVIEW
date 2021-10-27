//
//  Menu.swift
//  Mcdonalds
//
//  Created by Rahaf Abdulaal on 20/03/1443 AH.
//

import UIKit

class Menu: UITableViewCell {

    @IBOutlet weak var ImageItem: UIImageView!
    @IBOutlet weak var ItemTitle: UILabel!
    @IBOutlet weak var Category: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
