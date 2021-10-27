//
//  homeViewController.swift
//  week5day2
//
//  Created by MAC on 19/03/1443 AH.
//

import UIKit

class homeViewController: UIViewController {
    var guestName : String?
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        nameLabel.text = guestName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
