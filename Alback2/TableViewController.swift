//
//  TableViewController.swift
//  Alback2
//
//  Created by بندر عبيد ثاري الرشيدي on 20/03/1443 AH.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var productsNames = ["LOGO", "Burger", "Prost", "Chicken nuggets", "Shawarma", "Falafel"]
    var productsDetails = ["LOGO", "Nice burger", "Oven chicken", "Spicy chicken", "delicious shawarma", "Falafel sandwich"]
    var theprices = ["LOGO", "Cost 9.00", "Cost 25.00", "Cost 18.00", "Cost 10.00", "Cost 6.00"]
    var Imoge = [UIImage(named: "AlBaik"),
                 UIImage(named: "برجر"),
                 UIImage(named: "Prost"),
                 UIImage(named: "chicken nuggets"),
                 UIImage(named: "Shawarma"),
                 UIImage(named: "falafel")]
                 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productsNames.count
        
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if (indexPath.row == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "Firstsl", for: indexPath)
            return cell

        } else {
            let cellProduct = tableView.dequeueReusableCell(withIdentifier: "Secend", for: indexPath) as! TableViewCell2
            cellProduct.label1.text = productsNames[indexPath.row]
            cellProduct.label2.text = productsDetails[indexPath.row]
            cellProduct.label3.text = theprices [indexPath.row]
            cellProduct.ImogeBurger.image = Imoge[indexPath.row]
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
