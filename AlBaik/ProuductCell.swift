//
//  ProuductCell.swift
//  ex31
//
//  Created by Reem Saleh on 20/03/1443 AH.
//

import UIKit

class ProuductCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var Description: UILabel!
    
    @IBOutlet weak var cost: UILabel!
    
    @IBOutlet weak var imges: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
