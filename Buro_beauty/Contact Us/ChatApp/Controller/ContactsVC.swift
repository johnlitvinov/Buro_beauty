//
//  ContactsVC.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/19/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func logOut(_ sender: Any) {
       
        if AuthProvider.instance.logOut(){
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    
} //end class
