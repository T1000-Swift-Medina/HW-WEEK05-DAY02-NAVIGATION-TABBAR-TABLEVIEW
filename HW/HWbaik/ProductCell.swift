//
//  ProductCell.swift
//  HWbaik
//
//  Created by العــفاف . on 20/03/1443 AH.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var imaItem: UIImageView!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Details: UILabel!
    @IBOutlet weak var Price: UILabel!
    
    @IBAction func OnAddToCart(_ sender: Any) {
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
