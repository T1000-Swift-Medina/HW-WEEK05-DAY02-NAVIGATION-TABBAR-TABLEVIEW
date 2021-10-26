//
//  MenuTableViewControllere.swift
//  AlBaik_Nav_TabBar_TableView
//
//  Created by Abdullah Bajaman on 26/10/2021.
//

import UIKit

enum Food: String {
    case brost, Burgar, strips, bigBaik
    
}

var item2 = Product(title: "Burgar", details: "delecious", cost: 15.50, imgProduct: UIImage(named: Food.Burgar.rawValue))
var item3 = Product(title: "Strips", details: "delecious", cost: 11, imgProduct: UIImage(named: Food.strips.rawValue) )
var item4 = Product(title: "Sandwich", details: "delecious", cost: 5, imgProduct: UIImage(named: Food.bigBaik.rawValue))
var item5 = Product(title: "Brost", details: "delecious", cost: 15, imgProduct: UIImage(named: Food.brost.rawValue))


class MenuTableViewControllere: UITableViewController {

    var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "BannerCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductID")
        
        getProducts()
    }

    func getProducts (){
        products.append(item2)
        products.append(item3)
        products.append(item4)
        products.append(item5)
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
            
            return products.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell!
        
        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerCell
        } else {
            let pcell = tableView.dequeueReusableCell(withIdentifier: "ProductID") as! ProductCell
            
            let product = products[indexPath.row]
            pcell.lblTitle.text = product.title
            pcell.lblDescription.text = product.details
            pcell.lblCost.text = String("Cost: \(product.cost)")
            pcell.imgProduct.image = product.imgProduct
            pcell.btnAddToCart.tag = indexPath.row
            pcell.btnAddToCart.addTarget(self, action: #selector(addBtnClicked(sender:)), for: .touchUpInside)
            cell = pcell
        }

        // Configure the cell...

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Index: \(indexPath.row)")
    }
    
    @objc
    func addBtnClicked (sender: UIButton){
        print("Button index: \(sender.tag)")
        
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
