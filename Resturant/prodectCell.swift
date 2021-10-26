//
//  prodectCell.swift
//  Resturant
//
//  Created by Noura Alahmadi on 20/03/1443 AH.
//

import UIKit

class prodectCell: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var cost: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
