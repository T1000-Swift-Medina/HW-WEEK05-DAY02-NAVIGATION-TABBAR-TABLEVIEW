//
//  ResturanTableViewController.swift
//  Resturant
//
//  Created by Noura Alahmadi on 20/03/1443 AH.
//

import UIKit

struct Product{
    var title : String
    var detalis : String
    var cost : Double
    var imageProduct : UIImage
}
struct ProductList {
    var items: [Product] = []
    
    mutating func addItem (newItem : Product) {
        items.append(newItem)
    }
}


class ResturanTableViewController: UITableViewController {
    var item = ProductList(items: [Product(title: "10 piece chicken Nuggets", detalis: "crunchy to perfection. incloud a bun , frise and 2 nuggets sauces." , cost: 15.00 , imageProduct: UIImage(named: "nuggest")!)])
  
    override func viewDidLoad() {
        super.viewDidLoad()
        item.addItem(newItem: Product(title: "ALBAIK 4 Piece Chicken Meal", detalis: "crunchy to perfection includes a bun , fries and 2 garlic sauces", cost: 15.00 , imageProduct:UIImage(named: "broost")!))
        
        tableView.register(UINib(nibName: "prodectCell", bundle: nil), forCellReuseIdentifier: "itemCell")
        tableView.register(UINib(nibName: "BannerTableViewCell", bundle: nil), forCellReuseIdentifier: "BannerCell")
        tableView.rowHeight = 120
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    @IBOutlet var menuTable: UITableView!
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        }else{
        return item.items.count
    
    }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell : UITableViewCell!
        if (indexPath.section == 0) {
             let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell", for: indexPath) as! BannerTableViewCell
            return cell
        } else {
         let cellProduct = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! prodectCell
    
            cellProduct.title.text = item.items[indexPath.row].title
            cellProduct.details.text = item.items[indexPath.row].detalis
            cellProduct.cost.text = String(item.items[indexPath.row].cost)
            cellProduct.image1.image = item.items[indexPath.row].imageProduct
            
            return cellProduct

        // Configure the cell...
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
