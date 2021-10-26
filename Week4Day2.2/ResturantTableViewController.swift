import UIKit
struct Product {
    
    var Name : String = ""
    var Discribtion :String = ""
    var price: Double
    var image: UIImage?
}


class ResturantTableViewController: UITableViewController {

    var item:[Product] = [
                        Product (Name: "Espreso", Discribtion: "one shot", price: 10.0, image: UIImage(named: "Image1")),
                          
                        Product (Name: "Captcheno", Discribtion: "Tow shot", price: 15.0, image: UIImage(named: "Image3")),
                          
                          Product (Name: "Moca", Discribtion: "hot", price: 10.0, image: UIImage(named: "Image4")),
    
    
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "BannerCell", bundle: nil), forCellReuseIdentifier: "itemCell")
        
        tableView.register(UINib(nibName: "TobBannerCell", bundle: nil), forCellReuseIdentifier: "imageCell")
       
        tableView.rowHeight = 120

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
        if section == 0 {
            return 1
            
        }else{
            return item.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell : Any = 0
        
        if indexPath.section == 0 {
         let  cell  = tableView.dequeueReusableCell(withIdentifier:  "imageCell", for: indexPath)
            
            return cell
        }else{
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
            as! BannerCell
            
            cell.Name.text = item[indexPath.row].Name
            cell.Discribtion.text = item[indexPath.row].Discribtion
            cell.Price.text = String (item[indexPath.row].price)
            cell.productImage.image = (item[indexPath.row].image)
            return cell
            
        }
        // Configure the cell...

       
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
