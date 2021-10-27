//
//  resturantTableViewController.swift
//  week5UITests
//
//  Created by لمى فرحان on 20/03/1443 AH.
//

import UIKit
struct Product {
    var title: String = ""
    var details: String = ""
    var cost: Double
    var imgproduct: UIImage?
}

class resturantTableViewController: UITableViewController {
    
    
    var item1 = [Product(title: "sandwich",
                         details: "Delicious crispy and contsins 8 pices",
                         cost: 22.0,
                         imgproduct:UIImage(named: "Sandwich")),
                 
                 Product (title:"Burger",
                          details:"Cheese with fries and soft drink",
                          cost: 15.0,
                          imgproduct:UIImage(named: "chicken")),
                 
                 Product(title:"Chicken Nuggets",
                         details: "6 pieces chicken fillet nuggets",
                         cost: 27.0,
                         imgproduct:UIImage(named: "nuggets"))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "bannarcell", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.register(UINib(nibName: "ItemCell", bundle: nil), forCellReuseIdentifier: "ItemID")
        
        
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
        if (section == 0 ) {
           return 1
        } else {
            return  item1.count}
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! bannarcell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemID") as! ItemCell
            
            cell.Title.text = item1[indexPath.row].title
            cell.details.text = item1[indexPath.row].details
            cell.price.text = String(item1[indexPath.row].cost)
            cell.imgItem.image = item1[indexPath.row].imgproduct
            return cell
            
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
