//
//  Restrante.swift
//  exr1_week5
//
//  Created by Afnan Theb on 20/03/1443 AH.
//

import UIKit
struct Product {
    
    var title : String
    var details : String
    var cost : Double
    var imgProduct : UIImage?
    
    
}
class Restrante: UITableViewController {
    
    
    var item: [Product] = [Product(title: "Nuggest", details: "Delicious Crispy and contsins 5 pieces" ,cost: 19.90 , imgProduct: UIImage(named: "nugget")) ,
                           
                           Product(title: "Burger", details: "cheese with chicken come with fries ",
                           cost: 12.0 , imgProduct: UIImage(named: "burger-1")) ,
                           
                           Product(title: "Chicken Meal", details: "4 or 8 pieces chicken meals come with fries",
                           cost: 24.0 , imgProduct: UIImage(named: "chicken meal"))
                           ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"FirstCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.rowHeight = 150
        tableView.register(UINib(nibName: "ProCell", bundle: nil), forCellReuseIdentifier: "ProductID")
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
        if (section == 0){
            return 1
        }else {
            return item.count
        }
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
       // var cell : UITableViewCell!
        if (indexPath.section == 0){
        let cellBanner = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! FirstCell
        return cellBanner
        }else {
        let cellProduct = tableView.dequeueReusableCell(withIdentifier: "ProductID") as! ProCell
            
            
            cellProduct.title.text = item[indexPath.row].title
            cellProduct.details.text = item[indexPath.row].details
            cellProduct.price.text = " \(item[indexPath.row].cost) SR"
            cellProduct.imgItem.image = item[indexPath.row].imgProduct
            
        return cellProduct
        }
      
    }
    

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

}
