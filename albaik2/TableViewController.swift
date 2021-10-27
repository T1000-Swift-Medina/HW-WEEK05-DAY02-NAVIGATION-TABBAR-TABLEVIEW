//
//  TableViewController.swift
//  albaik2
//
//  Created by Yazan Alraddadi on 20/03/1443 AH.
//

import UIKit
struct product {
    var title:String
    var details: String
    var cost : Double
    var imagproduct : UIImage?
}






class TableViewController: UITableViewController {
    var item: [product] = [product (title: "Chicken Fillet Burger", details: "Also available as a combo with fries and soft drink", cost: 22.0, imagproduct: UIImage.init(named: "burgar")),
                           product (title: "Fish Fillet Meal", details: "6 fish fillet pieces come with fries", cost: 15.0, imagproduct: UIImage.init(named: "fish")),
                           product (title: "Cocktail Sauce", details: "makes a delicious addition to any of our specialties", cost: 1.0, imagproduct: UIImage.init(named: "Sauce")),
                           product (title: "Ice Cream", details: "Creamy, velvety vanilla ice cream", cost: 2.0, imagproduct: UIImage.init(named: "IceCream"))]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "bannerCell",bundle:nil), forCellReuseIdentifier: "bannerID")
        
        tableView.register(UINib(nibName: "products",bundle:nil), forCellReuseIdentifier: "ProductsID")
        tableView.rowHeight = 120
        
        
        
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
        } else {
            return item.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell : UITableViewCell!
        if (indexPath.section == 0) {
            let tablecell = tableView.dequeueReusableCell(withIdentifier: "bannerID") as! BannerCell
            return tablecell
        }
        else {
            let productscell = tableView.dequeueReusableCell(withIdentifier: "ProductsID") as! products
            
            productscell.title.text = item[indexPath.row].title
            productscell.cost.text = String(item[indexPath.row].cost)
            productscell.descrption.text = String (item[indexPath.row].details)
            productscell.imagee.image = item[indexPath.row].imagproduct
            
            return productscell
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
