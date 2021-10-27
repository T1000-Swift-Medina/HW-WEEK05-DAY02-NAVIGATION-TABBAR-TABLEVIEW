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

var item2 = Product(title: "Chicken Fillet Burger", details: "Also available as a combo with fries and soft drink", cost: 15.50, imgProduct: UIImage(named: Food.Burgar.rawValue))
var item3 = Product(title: "Strips", details: "7 or 10 pieces chicken fillet nuggets come with fries, a bun and your choice of 2 sauces (nugget/garlic sauce)", cost: 11, imgProduct: UIImage(named: Food.strips.rawValue) )
var item4 = Product(title: "Big Baik", details: "A ginormous chicken fillet breast with coleslaw, pickles, and our special sauce", cost: 5, imgProduct: UIImage(named: Food.bigBaik.rawValue))
var item5 = Product(title: "Brost", details: "4 or 8 pieces chicken meals come with fries, a bun and 2 garlic sauces", cost: 15, imgProduct: UIImage(named: Food.brost.rawValue))


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

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell Index: \(indexPath.row)")
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductShowViewController") as! ProductShowViewController
        let product = products[indexPath.row]
        vc.titleText = product.title
        vc.detail = product.details
        vc.img = product.imgProduct
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc
    func addBtnClicked (sender: UIButton) {
        print("Button index: \(sender.tag)")
        performSegue(withIdentifier: "ShowID", sender: self)
        
    }
    

}
