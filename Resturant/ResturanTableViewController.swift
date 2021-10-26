//
//  ResturanTableViewController.swift
//  Resturant
//
//  Created by Noura Alahmadi on 20/03/1443 AH.
//

import UIKit
class ResturanTableViewController: UITableViewController {
    
    var menuArry = ["10 piece chicken Nuggets", "4 piece chicken " , "Big Baik whith cheese"]
    
    var descArry = ["crunchy to perfection. incloud a bun , frise and 2 nuggets sauces." , "crunchy to perfection. incloud a buns , frise and 2 garlic sauces.", "aginormous chicken fillet breast sandwich with coleslaw , pickles and our special sause , cheese"]
    
    var costArry = ["15 SR" , "29 SR" , "13 SR"]
    
    var logoImages = [UIImage(named: "nuggest") , UIImage(named: "broost") , UIImage(named: "bigBaik")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        } else {
            return menuArry.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell : UITableViewCell!
        if (indexPath.section == 0) {
            
             let cell = tableView.dequeueReusableCell(withIdentifier: "BannerCell", for: indexPath) as! BannerTableViewCell
            return cell

        } else {
         let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! prodectCell
            cell.title.text = menuArry[indexPath.row]
            cell.details.text = descArry[indexPath.row]
            cell.cost.text = costArry [indexPath.row]
            cell.image1.image = logoImages [indexPath.row]
            return cell

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
