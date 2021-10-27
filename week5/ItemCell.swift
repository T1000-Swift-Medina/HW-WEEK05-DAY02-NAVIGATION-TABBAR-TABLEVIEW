//
//  ItemCell.swift
//  week5
//
//  Created by لمى فرحان on 20/03/1443 AH.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var Title: UILabel!

    @IBOutlet weak var details: UILabel!
    
    @IBOutlet weak var price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
