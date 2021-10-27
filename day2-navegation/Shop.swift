//
//  Shop.swift
//  day2-navegation
//
//  Created by Raghad Alahmadi on 20/03/1443 AH.
//

import UIKit
struct Item {
    var title: String = ""
    var details: String = ""
    var cost: Double = 0
    var imagItem: UIImage?
}


class Shop: UITableViewController {
    var product: [Item] = [
        Item(title: "Blush", details: "A long-lasting, blendable, multiuse liquid pigment for your cheeks,  lips and eyes.", cost: 80, imagItem: UIImage(named: "s2440212.png")),
        Item(title: " Concealer", details: "Soft Matte Complete Concealer", cost: 140, imagItem: UIImage(named: "concelar")),
        Item(title: "Palette", details: "Eyestories Eyeshadow Palette", cost: 130, imagItem:UIImage(named: "palette")),
        Item(title: "bareMinerals", details: "Strength & Length Serum-Infused Mascara", cost: 80, imagItem:UIImage(named: "bareMinerals")),
        Item(title: "CLINIQUE", details: " Take The Day Off Cleansing Balm Makeup Remover ", cost: 170, imagItem:UIImage(named: "CLINIQUE")),
        Item(title: "Lipstick", details: "Matte Revolution Lipstick", cost: 90, imagItem:UIImage(named: "Lipstick"))
    ]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "BannerTableViewCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        
        
        tableView.register(UINib(nibName: "ItemCellTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemID")
        tableView.rowHeight = 180
       
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//       return 10
        if section == 0 {
            return 1
        } else {
            return product.count
        }
//
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        
        if indexPath.section == 0 {
        let cellBanner = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerTableViewCell
        
            return cellBanner
            
        }
        else {
   let cellProduct = tableView.dequeueReusableCell(withIdentifier: "ItemID") as! ItemCellTableViewCell
            
            
    cellProduct.ItemName.text = product[indexPath.row].title
            
            cellProduct.ItemDesc.text = product[indexPath.row].details
            
            cellProduct.ItemCost.text = String(product[indexPath.row].cost)
            cellProduct.ItemImage.image = product[indexPath.row].imagItem
            
            return cellProduct
        }
    }
    

//
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//

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
