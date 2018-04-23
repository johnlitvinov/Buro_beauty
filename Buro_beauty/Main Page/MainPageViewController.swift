//
//  ViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/24/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var homebackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//  buttons style
    configeView()
    }

//  buttons style func
    func configeView (){
        button1.layer.cornerRadius = 22
        button2.layer.cornerRadius = 22
        button3.layer.cornerRadius = 22
        button4.layer.cornerRadius = 22
        button5.layer.cornerRadius = 22
//  backBarButtonItem style
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
// tabbar index
    @IBAction func services(_ sender: Any) {
    self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func portfolio(_ sender: Any) {
    self.tabBarController?.selectedIndex = 3
    }
    
    @IBAction func aboutUs(_ sender: Any) {
    self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func contactUs(_ sender: Any) {
    self.tabBarController?.selectedIndex = 4
    }
    

} //end class
