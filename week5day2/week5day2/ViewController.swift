//
//  ViewController.swift
//  week5day2
//
//  Created by MAC on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue:
                          UIStoryboardSegue,sender:Any? ){
        
        if (segue.identifier == "sendSegue"){
            
            let secVC = segue.destination as!
            homeViewController
            secVC.guestName = nameTextField.text
        }
    }
}
