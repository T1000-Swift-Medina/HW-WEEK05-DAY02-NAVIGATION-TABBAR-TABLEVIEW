//
//  Resturant.swift
//  Mcdonalds
//
//  Created by Rahaf Abdulaal on 20/03/1443 AH.
//

import UIKit

class Resturant: UITableViewController {
    var Title = ["Sandwiches","SnacksSides","Dessert","Drinks","Sauces"]
    var logoImage: [UIImage] = [
        UIImage(named: "Sandwiches.png")!,
        UIImage(named: "SnacksSides.png")!,
        UIImage(named: "sweet.jpeg")!,
        UIImage(named: "drinks.jpeg")!,
        UIImage(named: "Sauces.jpeg")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "Banner", bundle: nil), forCellReuseIdentifier: "BannerID")
        
        tableView.register(UINib(nibName: "Menu", bundle: nil), forCellReuseIdentifier: "ItemID")
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
        }else {
        return Title.count
    }

    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            var cell: UITableViewCell!
            cell = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! Banner
            return cell
        }
        else{
            //var cell2: UITableViewCell!
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "ItemID") as! Menu
            
            cell2.ItemTitle.text = Title[indexPath.row]
            cell2.ImageItem.image = logoImage[indexPath.row]
            
            
            return cell2
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
