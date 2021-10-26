//
//  productCell.swift
//  week5_day22
//
//  Created by نجود  on 20/03/1443 AH.
//

import UIKit

class productCell: UITableViewCell {

    
    @IBOutlet weak var imgItem: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var details: UILabel!
   
    
    @IBOutlet weak var price: UILabel!
    
    
    @IBAction func onAddToCart(_ sender: Any) {
        
        
        
        
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
