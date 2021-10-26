//
//  ResturantTableViewController.swift
//  AlbaikNav
//
//  Created by Nojoud Mohaimmed on 20/03/1443 AH.
//

import UIKit

struct Product {
    var title : String = ""
    var Description : String = ""
    var cost : Double = 0
    var images : UIImage
}



class ResturantTableViewController: UITableViewController {
    
    
    
    var items : [Product] = [Product (title: "Nuggets",
                                      Description: "Delicious Crispy and contains 8 pieces",
                                      cost: 22.0 ,
                                      images: UIImage(named: "Nuggets")!),
                             Product (title: "Burger",
                                      Description: "Delicious and tasty with cheese",
                                      cost: 20.0,
                                      images: UIImage(named: "burger-1")!),
                             Product (title: "Chicken Fillet Sandwich",
                                      Description: "Boneless chicken wrapped in Arabic bread",
                                      cost: 7.0,
                                      images: UIImage(named: "Sandwich")!),
                             Product (title: "Big Baik",
                                      Description: "chicken breast fillet sandwich with coleslaw and special albaik sauce.",
                                      cost: 13.50,
                                      images: UIImage(named: "bigBaik")!)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "Banner", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemCell")
        tableView.rowHeight = 140
        
        
        
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
//        return items.count + 1
        if section == 0 {
            return 1
        }else{
            return items.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
//
//        // Configure the cell...
        
        
        
        
        if (indexPath.section == 0) {
            
        let cellBanner =
        tableView.dequeueReusableCell(withIdentifier: "BannerID") as!Banner
        return cellBanner
        }else{
            let cellProduct =
            tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! MyTableViewCell
            cellProduct.title.text = items[indexPath.row].title
            cellProduct.Description.text = items[indexPath.row].Description
            cellProduct.cost.text = String(items[indexPath.row].cost)
            cellProduct.images.image = items[indexPath.row].images
           
            return cellProduct
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
}
