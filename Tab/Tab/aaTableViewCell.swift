//
//  aaTableViewCell.swift
//  Tab
//
//  Created by Haya on 20/03/1443 AH.
//

import UIKit

class aaTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBOutlet weak var imeges: UIImageView!
    @IBOutlet weak var nameTi: UILabel!
    
    @IBOutlet weak var costlable: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
