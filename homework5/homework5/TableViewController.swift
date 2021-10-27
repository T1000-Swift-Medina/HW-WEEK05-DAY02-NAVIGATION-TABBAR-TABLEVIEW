//
//  TableViewController.swift
//  homework5
//
//  Created by MAC on 20/03/1443 AH.
//

import UIKit

struct product {
    
    var title : String = ""
    var details : String = ""
    var cost : Double = 0
    var imgprodeuct : String
}

class TableViewController: UITableViewController {
    
    var item1 : [product] = [product(title: "Chocolate tart", details: "Tart in several flavors with special sauce 🍫", cost: 30.0 ,
                                    imgprodeuct: "IMG"),
                             
    product(title: "Citrus mini", details: " citrus with special filling , baked with love ☕️🤍", cost: 8.0 ,
           imgprodeuct: "Image-1"),
    product(title: "Pop Cake", details: "Cake covered with Belgian chocolate🍭", cost: 6.0,
           imgprodeuct: "pop cake"),
    product(title: "Cake", details: "Layers of cake, according to the filling 🍰", cost: 90.0,
           imgprodeuct: "cake")]

    //var items : [product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //items += [item1, item2, item3, item4]
        
        tableView.register(UINib(nibName: "new2TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductID")
        tableView.rowHeight = 120
        tableView.register(UINib(nibName: "newTableViewCell", bundle: nil), forCellReuseIdentifier: "bannerID")
        //tableView.rowHeight = 120

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
        if section == 0 {
            return 1
        } else {

        return item1.count
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "bannerID") as!
            newTableViewCell
            return cell1
        }else{
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "ProductID") as!
        new2TableViewCell
        
            cell2.title.text = item1[indexPath.row ].title
            cell2.details.text = item1[indexPath.row  ].details
            cell2.price.text = String (item1[indexPath.row ].cost)
            cell2.imaitem.image = UIImage(named: item1[indexPath.row].imgprodeuct)
            
            return cell2
            

        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
