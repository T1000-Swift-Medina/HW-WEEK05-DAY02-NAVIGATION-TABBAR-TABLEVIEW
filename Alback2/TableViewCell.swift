//
//  TableViewCell.swift
//  Alback2
//
//  Created by بندر عبيد ثاري الرشيدي on 20/03/1443 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var LogeoAlbaik: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
