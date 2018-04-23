//
//  SocialLinkTableViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/3/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class SocialLinkTableViewController: UITableViewController {

    var socialImageList = ["Insta_icon_logo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     configeView()
    }
        
    
    func configeView() {
//   navigationItem style
    self.navigationItem.title = "Social Links"
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return socialImageList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SocialLinkTableViewCell
        // Configure the cell...
        cell.cellImage.image = UIImage(named: socialImageList[indexPath.row])
        return cell
    }
 
} //end class
