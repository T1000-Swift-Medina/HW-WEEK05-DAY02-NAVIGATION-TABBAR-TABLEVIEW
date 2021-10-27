//
//  Restraunat.swift
//  ex31
//
//  Created by Reem Saleh on 20/03/1443 AH.
//

import UIKit

struct Product {
    var title : String = ""
    var Description : String = ""
    var cost : Double = 0
    var imges : UIImage?
}

class Restraunat: UITableViewController {
    
    var items : [Product] = [Product (title: "Nuggets",
                                      Description: "Delicious Crispy and contains 8 pieces",
                                      cost: 22.0 ,
                                      imges: UIImage(named: "Nuggets")!),
                             Product (title: "Burger",
                                      Description: "Delicious and tasty with cheese",
                                      cost: 20.0,
                                      imges: UIImage(named: "burger")!),
                             Product (title: "Chicken Sandwich",
                                      Description: "Chicken with sauce and Shami bread",
                                      cost: 7.0,
                                      imges: UIImage(named: "Sandwich")!),
                             Product (title: "Filt fish",
                                      Description: "Boneless fish fillet with special flavor sause.",
                                      cost: 13.50,
                                      imges: UIImage(named: "filt fish")!)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"BannerCellTableViewCell", bundle: nil), forCellReuseIdentifier: "BannerID")
        tableView.register(UINib(nibName: "ProuductCell", bundle: nil), forCellReuseIdentifier: "item")
        tableView.rowHeight = 108
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if ( section == 0 ){
            return 1 }
        else{
            return items.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    {
        
        if indexPath.section == 0 {
            
            
            let cellBanner =  tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerCellTableViewCell
            
            // Configure the cell...
            
            return cellBanner
            
        } else {
            let cellProduct =
            tableView.dequeueReusableCell(withIdentifier: "item") as! ProuductCell



            cellProduct.title.text = items[indexPath.row].title
            cellProduct.Description.text = items[indexPath.row].Description
            cellProduct.cost.text = String(items[indexPath.row].cost)
            cellProduct.imges.image = items[indexPath.row].imges

            return cellProduct
        }
    }
}

