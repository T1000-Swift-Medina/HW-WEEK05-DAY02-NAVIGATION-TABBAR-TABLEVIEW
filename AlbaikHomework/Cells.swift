//
//  Cells.swift
//  AlbaikHomework
//
//  Created by Roaa aljohani on 20/03/1443 AH.
//

import UIKit

class Cells: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptions: UILabel!
    @IBOutlet weak var cost: UILabel!
    
   
   
    @IBOutlet weak var images: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
