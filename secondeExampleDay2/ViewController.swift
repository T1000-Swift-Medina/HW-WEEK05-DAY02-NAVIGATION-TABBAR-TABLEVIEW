//
//  ViewController.swift
//  secondeExampleDay2
//
//  Created by Nada Alansari on 19/03/1443 AH.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row == 0){
            let cell tableView.dequeueReusableCell(withIdentifier: "String", for: <#T##IndexPath#>) as! BannerTableViewCell
            return cell
            
        }
        else
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

