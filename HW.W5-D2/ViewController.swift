//
//  ViewController.swift
//  HW.W5-D2
//
//  Created by khalid ali on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secCell") as! cellItem
        
        cell.label1.text = "kjakls"
        cell.label2.text = "gggggg"
        cell.label3.text = "mmmmmm"
        return cell
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class cellItem : UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var ms7b: UIImageView!
    
}
