//
//  ServicesViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/25/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    
 
    @IBOutlet weak var callUsButton: UIButton!
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var sentData: String!
    
   
    @IBAction func callUsButton(_ sender: Any) {
    self.tabBarController?.selectedIndex = 4
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
        
    callUsButton.layer.cornerRadius = callUsButton.frame.width / 2
        
    self.navigationItem.title = sentData
        
        if self.navigationItem.title == "Price List" {
            
            detailImage.image = UIImage(named: "Price2")
            detailDescription.text = ""
            
        }
        
        
        if self.navigationItem.title == "Manicure" {
            
            detailImage.image = UIImage(named: "Manicure")
            detailDescription.text = "Nails. Masters of nail service perform impeccable classic and hardware manicure, including long-term coverage. And you can add interesting details to your image with the help of nail design of different degrees of courage."
        }
        
        
        
        if self.navigationItem.title == "Brow" {
            
            detailImage.image = UIImage(named: "Brow")
            detailDescription.text = ""
        }
        
        
        if self.navigationItem.title == "Eyelashes" {
            
            detailImage.image = UIImage(named: "Eyelashes")
            detailDescription.text = "Eyebrows and eyelashes. In the cabin of available extensions and Brazilian blowout, as well as restorative treatments for lashes – Botox and lamination. In addition, dyeing and correction of eyebrows"
        }
        
        if self.navigationItem.title == "Certificates" {
            
            detailImage.image = UIImage(named: "Certificates")
            detailDescription.text = ""
        }
        
        
        if self.navigationItem.title == "Goods" {
            
            detailImage.image = UIImage(named: "Goods")
            detailDescription.text = "Cosmetic. Craftsmen work on high-quality luxury materials and products. By the way, for home use offered professional Italian hair cosmetics Davines"
        }
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

    
} //end class
