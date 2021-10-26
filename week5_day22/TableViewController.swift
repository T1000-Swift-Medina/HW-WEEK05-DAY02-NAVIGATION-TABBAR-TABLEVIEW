//
//  TableViewController.swift
//  week5_day22
//
//  Created by نجود  on 20/03/1443 AH.
//

import UIKit

struct Product {
    
    var title : String
    var details : String
    var cost : Double
    var imgProduct : String
}

class TableViewController: UITableViewController {

    var item : [Product] = [Product(title: "Burger",
                       details: "Cheese with chicken and vegetables ",
                       cost: 15.0 ,
                       imgProduct: "Image"),
                            
                        Product(title: "Nuggets",
                        details: "Delicious Crispy and contsins 8 pieces ",
                        cost: 22.0 ,
                        imgProduct: "Image-1"),
                            
                        Product(title: "Sandiwtsh",
                        details: "Delicious with With cocktail sauce",
                        cost: 10.0 ,
                        imgProduct: "sandiwtsh"),
                            
                        Product(title: "Chicken",
                        details: "Delicious and tasty ",
                        cost: 20.0 ,
                        imgProduct: "chicken")
]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.register(UINib(nibName: "BinnerCellTableViewCell" , bundle: nil), forCellReuseIdentifier: "binnerID")
        
        
        tableView.register(UINib(nibName: "productCell" , bundle: nil), forCellReuseIdentifier: "ProductID")
        
        tableView.rowHeight = 180
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
      // if section == 0 {
            
         //   return 1
        //}else{
        
        return item.count + 1
        //}
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cellBanner =
            tableView.dequeueReusableCell(withIdentifier: "binnerID") as! BinnerCellTableViewCell
            
            return cellBanner
        }else {
            let cellProduct =
            tableView.dequeueReusableCell(withIdentifier: "ProductID") as! productCell
            cellProduct.title.text = item[indexPath.row - 1].title
            cellProduct.details.text = item[indexPath.row - 1].details
            cellProduct.price.text = String(item[indexPath.row - 1].cost)
            cellProduct.imgItem.image = UIImage(named: item[indexPath.row - 1].imgProduct)
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
