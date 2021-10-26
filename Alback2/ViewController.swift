////
////  ViewController.swift
////  Alback2
////
////  Created by بندر عبيد ثاري الرشيدي on 19/03/1443 AH.
////
//
//import UIKit
//
//class ViewController: UIViewController, UIApplicationDelegate, UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//
//       }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "secned")as! customcell
//        cell.Label1.text = "Burger"
//        cell.label2.text = "Delicious"
//        cell.Label3.text = "Cost 50.00"
//        return cell
//    }
//
//
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}
//
//
//class customcell: UITableViewCell {
//
//    @IBOutlet weak var Label1: UILabel!
//    @IBOutlet weak var label2: UILabel!
//    @IBOutlet weak var Label3: UILabel!
//
//}
//
