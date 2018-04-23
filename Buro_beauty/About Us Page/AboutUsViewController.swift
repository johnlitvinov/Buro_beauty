//
//  AboutUsViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/30/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var callUS: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configeView()
    }
    
    
   //  buttons style func
      func configeView() {
    // create a circular button
        callUS.layer.cornerRadius = callUS.frame.width / 2
    }
    
    
    // when you press the button -> there is a transition to the 5 button in the Tab bar (index 4)
    @IBAction func contactUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 4
        self.dismiss(animated: true, completion: nil)
    }
    
} //end class


   

