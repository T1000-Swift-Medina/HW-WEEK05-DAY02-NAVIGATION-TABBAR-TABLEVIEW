//
//  ProductCell.swift
//  App111
//
//  Created by شروق فرج سويلم الحويطي on 20/03/1443 AH.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var imgItem: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var onPraes: UILabel!
    
    @IBAction func addbutten(_ sender: Any) {
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


