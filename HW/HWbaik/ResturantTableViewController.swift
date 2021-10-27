//
//  ResturantTableViewController.swift
//  HWbaik
//
//  Created by العــفاف . on 20/03/1443 AH.
//

import UIKit
struct Product {
    var title: String = ""
    var details: String = ""
    var cost: Double = 0
    var imgProduct: String
    
}

class ResturantTableViewController: UITableViewController {
    

    var item: [Product] = [Product(title: "Burger",
                                   details: "Cheese with Chcken and vegetable",
                                   cost: 25.5,
                                   imgProduct: "Burger-2"),
                           Product(title: "Chicen fillet Burger",
                                   details: "Also available as a combo with fries and soft drink",
                                    cost: 30.0,
                                   imgProduct: "Chicen fillet Burger"),
                           Product(title: "Nuggets",
                                    details: "Delicious Crispy and contsins 8 pieces",
                                    cost: 22.1,
                                    imgProduct: "Nuggets"),
                           Product(title: "Value shrimp meal",
                                    details: "10 buttfied shrimp pieces come with fries, a bun and you choice of 2",
                                   cost: 35.5,
                                    imgProduct: "Value shrimp meal"),
                           Product(title: "Coleslaw Salad",
                                    details: "Freshly prepared shredded cabbage and carrots mixed with our special salad dressing",
                                   cost: 15.9,
                                    imgProduct: "Coleslaw Salad"),
                           Product(title: "Ice Cream with Strawberry Syrup",
                                    details: "Creamy, velvety vanilla ice cream – eat it on its own or ask for it drizzled with strawberry sauce. To be enjoyed at any time or place.",
                                   cost: 13.8,
                                    imgProduct: "Ice Cream"),
                           Product(title: "Corn on the Cob",
                                    details: "Served piping hot with a pack of butter on the side to spread on top",
                                   cost: 10.9,
                                    imgProduct: "Corn"),
                           Product(title: "Soft Drinks",
                                    details: "A selection of Pepsi, Diet Pepsi, Mirinda and 7UP are available as an addition to your meal",
                                   cost: 5.0,
                                    imgProduct: "Soft"),
                           Product(title: "Juices",
                                    details: "A selection of mango, orange, apple and mixed fruit juice are available as an addition to your meal",
                                   cost: 2.0,
                                    imgProduct: "Juices"),
                           Product(title: "Water",
                                    details: "",
                                   cost: 1.5,
                                    imgProduct: "Water")
                           
    ]

        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"BannerCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.rowHeight = 120
        
        tableView.register(UINib(nibName:"ProductCell", bundle: nil), forCellReuseIdentifier: "ProductID")
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
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath
        
    
        if(indexPath.section == 0){
        let cellBanner = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerCell
            
            return cellBanner
        } else {
            
          let cellProduct = tableView.dequeueReusableCell(withIdentifier: "ProductID") as! ProductCell
            
            cellProduct.Title.text = item[indexPath.row ].title
            cellProduct.Details.text = item[indexPath.row ].details
            cellProduct.Price.text = String(item[indexPath.row ].cost)
            cellProduct.imaItem.image = UIImage(named: item[indexPath.row].imgProduct)
            
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
