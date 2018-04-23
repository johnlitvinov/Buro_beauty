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
    
//       when you press the -> button, the button in the Tab bar (index 4)
    @IBAction func callUsButton(_ sender: Any) {
        self.tabBarController?.selectedIndex = 4
        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        configeView ()
    }
        
        
        
        
     func configeView (){
        
//       creating a circular button
        callUsButton.layer.cornerRadius = callUsButton.frame.width / 2
        
//       the selected service, send photos and text to each service
        self.navigationItem.title = sentData
        if self.navigationItem.title == "Price List" {
            detailImage.image = UIImage(named: "Price2")
            detailDescription.text = ""
        }
        
        if self.navigationItem.title == "Manicure" {
            detailImage.image = UIImage(named: "Manicure")
            detailDescription.text = "Nails. Masters of nail service perform impeccable classic and hardware manicure, including long-term coverage. "
        }
        
        if self.navigationItem.title == "Brow" {
            detailImage.image = UIImage(named: "Brow")
            detailDescription.text = ""
        }
        
        if self.navigationItem.title == "Eyelashes" {
            detailImage.image = UIImage(named: "Eyelashes")
            detailDescription.text = " Eyelashes. In the cabin of available extensions and Brazilian blowout "
        }
        
        if self.navigationItem.title == "Certificates" {
            detailImage.image = UIImage(named: "Certificates")
            detailDescription.text = ""
        }
        
        if self.navigationItem.title == "Goods" {
            detailImage.image = UIImage(named: "Goods")
            detailDescription.text = "Cosmetic. Craftsmen work on high-quality luxury materials and products"
        }
        
//     navigationItem style
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    
    } //end func
    
} //end class
