//
//  myViewController.swift
//  lm
//
//  Created by MAC on 18/03/1443 AH.
//

import UIKit

class myViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "segue1"){
            
            let secCV = segue.destination as! myViewController secCV.
        }
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
