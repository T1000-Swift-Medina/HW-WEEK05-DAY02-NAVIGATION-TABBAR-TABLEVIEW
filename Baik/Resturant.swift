//
//  Resturant.swift
//  Baik
//
//  Created by mohammad.alsharif on 20/03/1443 AH.
//

import UIKit

struct Product {
    var title: String = ""
    var details: String = ""
    var cost: Double = 0.0
    var imgProduct: UIImage?
}

class Resturant: UITableViewController, UIGestureRecognizerDelegate {
    
    var item: [Product] = [Product(title: "Burger", details: "Chicken Fillt Burger", cost: 4.0, imgProduct: UIImage(named: "Burger-1")),
                           
     Product(title: "Snack", details: "5 piece chicken fingers", cost: 4.0, imgProduct: UIImage(named: "shawerma")),
                           
    Product(title: "Shawerma", details: "Shawerma sandwich", cost: 4.0, imgProduct: UIImage(named: "Snack")),
    
    Product(title: "Piece Chicken", details: "10 Piece Chicken", cost: 15.0, imgProduct: UIImage(named: "Piece Chicken")),
    
    Product(title: "Corn in the cob", details: "Served piping with of butter", cost: 5.0, imgProduct: UIImage(named: "Corn in the Cob"))]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "BannerTableViewCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        
        tableView.register(UINib(nibName: "productCell", bundle: nil),
            forCellReuseIdentifier:"productID")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @objc func viewImage (sender: UITapGestureRecognizer) {
        print("mmm")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 0
        } else {
            return item.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
             let banncerCell = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerTableViewCell
            return banncerCell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "productID") as! productCell

            cell.title.text = item[indexPath.row].title
            cell.details.text = item[indexPath.row].details
            cell.price.text = String(item[indexPath.row].cost)
            cell.imgItem.image = item[indexPath.row].imgProduct

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
