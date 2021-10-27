//
//  productCell.swift
//  Baik
//
//  Created by mohammad.alsharif on 20/03/1443 AH.
//

import UIKit

class productCell: UITableViewCell {

    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func onAddToCart(_ sender: Any) {
    
    }
    
    
}
