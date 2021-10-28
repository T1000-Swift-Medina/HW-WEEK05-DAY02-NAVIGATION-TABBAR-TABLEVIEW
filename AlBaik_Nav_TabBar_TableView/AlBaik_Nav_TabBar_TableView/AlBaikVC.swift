//
//  AlBaikVC.swift
//  AlBaik_Nav_TabBar_TableView
//
//  Created by Abdullah Bajaman on 28/10/2021.
//

import UIKit
import WebKit

class AlBaikVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let url = URL(string: "https://www.albaik.com/ar")else{return}
        webView.load(URLRequest(url: url))
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
