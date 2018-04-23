//
//  ServicesTableViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/25/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class ServicesTableViewController: UITableViewController {

    
//  array with services
    var serviceList = ["Price List", "Manicure", "Brow", "Eyelashes", "Certificates", "Goods"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configeView()
    }

//  navigationItem style func
    func  configeView(){
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceList.count
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ServicesTableViewCell
        // Configure the cell...
        cell.cellTitle.text = serviceList[indexPath.row]
        return cell
    }
    

    
    
    // MARK: - Navigation
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showDetail"){
            let destinationVC = segue.destination as! ServicesViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                destinationVC.sentData = serviceList[indexPath.row] as String
            }
        }
    }
    
    
} //end class
