//
//  TableViewController.swift
//  secondeExampleDay2
//
//  Created by Nada Alansari on 20/03/1443 AH.
//

import UIKit

class TableViewController: UITableViewController {
    
    var Title = ["Pizza Margherita","Louis Pizza","Chicago Pizza","Neapolitan pizza","Sicilian Pizza"]
    
    var deatils = ["Description of pizza","Description of pizza","Description of pizza","Description of pizza","Description of pizza"]
    var logoImage = [
        UIImage(named: "pizza1.JBEG"),
        UIImage(named: "pizza2.JBEG"),
        UIImage(named: "pizza4.JBEG"),
        UIImage(named: "pizza4.JBEG"),
        UIImage(named: "pizza5.JBEG")
    ]
    
    var cost = ["20RS","30R","25RS","32RS","32RS"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "BannerTableViewCell", bundle: nil), forCellReuseIdentifier: "bannerID")
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "itemCell")
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Title.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            var cell: UITableViewCell!
            cell = tableView.dequeueReusableCell(withIdentifier: "bannerID") as! BannerTableViewCell
            return cell
        }
        else{
            //var cell2: UITableViewCell!
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! TableViewCell
            
            cell2.titlellbl.text = Title[indexPath.row]
            cell2.desclbl.text = deatils[indexPath.row]
            cell2.cost.text = cost[indexPath.row]
            cell2.img1.image = logoImage[indexPath.row]
            
            
            return cell2
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
