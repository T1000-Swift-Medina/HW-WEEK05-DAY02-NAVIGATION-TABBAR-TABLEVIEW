//
//  TableViewCell2.swift
//  Alback2
//
//  Created by بندر عبيد ثاري الرشيدي on 20/03/1443 AH.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var ImogeBurger: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
