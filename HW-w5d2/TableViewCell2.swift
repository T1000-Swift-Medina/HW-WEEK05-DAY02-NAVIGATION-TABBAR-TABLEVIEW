//
//  TableViewCell2.swift
//  HW-w5d2
//
//  Created by Osama folta on 20/03/1443 AH.
//

import UIKit

class TableViewCell2: UITableViewCell {
    
    @IBOutlet weak var cellimg: UIImageView!
    
    @IBOutlet weak var titl: UILabel!
    @IBOutlet weak var descrb: UILabel!
    
    @IBOutlet weak var cost: UILabel!
    
    @IBAction func btn(_ sender: Any) {
        
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

