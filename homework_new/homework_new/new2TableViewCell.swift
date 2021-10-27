//
//  new2TableViewCell.swift
//  homework5
//
//  Created by MAC on 20/03/1443 AH.
//

import UIKit

class new2TableViewCell: UITableViewCell {

    @IBOutlet weak var imaitem: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBAction func onaddtocart(_ sender: Any) {
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
