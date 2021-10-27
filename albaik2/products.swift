//
//  products.swift
//  albaik2
//
//  Created by Yazan Alraddadi on 20/03/1443 AH.
//

import UIKit

class products: UITableViewCell {

    @IBOutlet weak var imagee: UIImageView!
    
    @IBAction func add(_ sender: Any) {
    }
    
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var descrption: UILabel!
    @IBOutlet weak var title: UILabel!
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
