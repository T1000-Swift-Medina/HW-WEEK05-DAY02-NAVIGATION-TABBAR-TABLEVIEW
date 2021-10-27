//
//  TableViewCell1.swift
//  HungerStation
//
//  Created by بندر عبيد ثاري الرشيدي on 21/03/1443 AH.
//

import UIKit

class TableViewCell1: UITableViewCell {

 

   
    
    @IBOutlet weak var lmogo: UIImageView!
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var Label2: UILabel!
    
    @IBOutlet weak var Label3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
