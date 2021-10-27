//
//  TableViewController.swift
//  Tab
//
//  Created by Haya on 20/03/1443 AH.
//

import UIKit

struct FastFood{
    var name :String
    var cost : String
    var descriptin :String
    var photo : UIImage
}


class TableViewController: UITableViewController {
    var arrFood = [FastFood]()
    override func viewDidLoad() {
        // انشأت مصوفه وسميتها وادخلت بداخلها اسم المصفوفه تبع struct

        
        
        
        super.viewDidLoad()
//        var arrFood = [FastFood]()
        tableView.delegate = self
        tableView.dataSource = self
        
        //اضفت المصفوفه اللي فوق بعده ابين عشان تضيف لي البيانات وبعدها المصفوفه اللي في structوانتت لم اضيف صوره لازم احط !
        
        arrFood.append(FastFood.init(name: "Burger", cost: "15", descriptin: "Hotandcold,CheeseOr'hot", photo: UIImage(named: "Bug")!))
        
        arrFood.append(FastFood.init(name: "potatos", cost: "12", descriptin: "CheeseOr'hot", photo: UIImage(named: "potatos")!))
        
        arrFood.append(FastFood.init(name: "cola", cost: "7", descriptin: "with snow or not", photo: UIImage(named: "cola.JPEG")!))
        //  تسجيل خليه خاصه في التيبل من خلال registerلربطهاtableView
//        عشان نسجلها تحتاج اسم الكلاس اللي جات منه واسم المعرف
        tableView.register(UINib(nibName: "ATableViewCell", bundle: nil), forCellReuseIdentifier: "BannerCell")
      tableView.rowHeight = 40

        tableView.register(UINib(nibName: "aaTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemCell")
        tableView.rowHeight = 150
      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //رقم السكشن
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      // #warning Incomplete implementation, return the number of rows
        //رقم الخليه بكل سكشن
        if section == 0 {
            return 1
        } else {
            return arrFood.count
    }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        هناء شرط عشان يطبع البنر اول شي
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell", for: indexPath)

            return cell
//            يطبع باقي الخلاياء 
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! aaTableViewCell
            cell.nameTi.text = arrFood[indexPath.row].name
            cell.descriptionLable.text = arrFood[indexPath.row].descriptin
            cell.costlable.text = arrFood[indexPath.row].cost
            cell.imeges.image = arrFood[indexPath.row].photo

            return cell
        }
    }
}
