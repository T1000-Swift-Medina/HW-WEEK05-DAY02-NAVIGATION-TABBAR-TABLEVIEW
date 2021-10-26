//
//  TableView.swift
//  AlbaikHomework
//
//  Created by Roaa aljohani on 20/03/1443 AH.
//

import UIKit

class TableView: UITableViewController {
   
    var arrTitle = ["orange juice", "struberry juice","bluberry juice","pineaple juice","grapes juice", "struberry juice","bluberry juice","pineaple juice","bluberry juice","pineaple juice"]
    var arrDescription = ["Delicious","Delicious ","Delicious","Delicious ","Delicious ","Delicious ","Delicious","Delicious ","Delicious","Delicious "]
    var arrCost = ["50","40","30","20","10","50","40","30","20","10"]
    
    var arrimage = [UIImage(named: "orange"), UIImage(named: "blue"),UIImage(named: "stro"),UIImage(named: "pinaple"),UIImage(named: "anob"), UIImage(named: "blue"),UIImage(named: "stro"),UIImage(named: "blue"),UIImage(named: "anob"),UIImage(named: "anob")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.register(UINib(nibName: "Cells", bundle: nil), forCellReuseIdentifier: "ItemID")
        tableView.register(UINib(nibName: "Banner", bundle: nil), forCellReuseIdentifier: "BannerID")
 tableView.rowHeight = 100
        

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
        if section == 0{
            return 1 }
        else {
            return arrTitle.count
            
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //  var cell = nil
        if(indexPath.section == 0){
           let cell = tableView.dequeueReusableCell(withIdentifier: "BannerID", for: indexPath) as! Banner
       return cell
        }
        else {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "ItemID", for: indexPath) as! Cells
            cell1.title.text = arrTitle[indexPath.row]
           cell1.descriptions.text = arrDescription[indexPath.row]
          cell1.cost.text = arrCost[indexPath.row]
            cell1.images.image = arrimage[indexPath .row]
            return cell1
        }

       
  

       
    }}
