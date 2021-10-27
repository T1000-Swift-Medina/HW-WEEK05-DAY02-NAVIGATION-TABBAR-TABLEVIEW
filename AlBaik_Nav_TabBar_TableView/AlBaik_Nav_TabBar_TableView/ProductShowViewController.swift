//
//  ProductShowViewController.swift
//  AlBaik_Nav_TabBar_TableView
//
//  Created by Abdullah Bajaman on 27/10/2021.
//

import UIKit

class ProductShowViewController: UIViewController {

    var titleText = "", detail = "", img : UIImage?
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var detailLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLbl.text = titleText
        detailLbl.text = detail
        productImg.image = img
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
