//
//  Restaurant.swift
//  App111
//
//  Created by شروق فرج سويلم الحويطي on 20/03/1443 AH.
//

import UIKit

struct Product {

    var title: String = ""
    var details: String = ""
    var cost: Double
    var imgProduct: UIImage?


}


class Restaurant: UITableViewController {
    var item1 = [Product (title:"Chicken Fillet Burger",
                        details:"Also available as a combo with fries and soft drink",
                        cost: 22.0,
                          imgProduct:UIImage(named:"img" )),
                
                  Product (title:"Burger",
                    
                            details:"Cheese with fries and soft drink",
                                    cost: 15.0,
                           imgProduct:UIImage(named:"img")),
    
        Product(title:"Chicken Nuggets",
                                     details:"6 pieces chicken fillet nuggets",
                                     cost: 27.0,
                                     imgProduct:UIImage(named: "img2"))]
                             
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "BannerCell", bundle:nil), forCellReuseIdentifier: "BannerID")
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductID")
        tableView.rowHeight = 180
    
                           
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        }else {
            return item1.count
    }
    }
    

override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
    if (IndexPath.section == 0){
        
       let cellBanner = tableView.dequeueReusableCell(withIdentifier:"BannerID")as! BannerCell
        return cellBanner
        
    }else {
let cellProuduct =  tableView.dequeueReusableCell(withIdentifier:"ProductID") as! ProductCell
        cellProuduct.title.text = item1[IndexPath.row].title
        cellProuduct.details.text = item1[IndexPath.row].details
        cellProuduct.onPraes.text = String(item1[IndexPath.row].cost)
        return cellProuduct
    }
}
}



//func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableView {
 //      var cell : UITableViewCell!
 //          if (IndexPath.row == 0){
 //              cell = tableView.dequeueReusableCell(withIdentifier:"BannerID")as! BannerCell
   //         }else {
    //   cell =  tableView.dequeueReusableCell(withIdentifier:"ProuductID")as! ProuductCell
   //       }
  //    return cell
//   }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


