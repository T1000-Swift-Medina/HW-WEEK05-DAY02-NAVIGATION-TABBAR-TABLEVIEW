//
//  ItemCellTableViewCell.swift
//  day2-navegation
//
//  Created by Raghad Alahmadi on 20/03/1443 AH.
//

import UIKit

class ItemCellTableViewCell: UITableViewCell {

    @IBOutlet weak var ItemImage: UIImageView!
    
    @IBOutlet weak var ItemName: UILabel!
    
    @IBOutlet weak var ItemDesc: UILabel!
    
    @IBOutlet weak var ItemCost: UILabel!
    
    @IBAction func AddButton(_ sender: Any) {
        

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
