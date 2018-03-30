//
//  ViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/24/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    
    @IBOutlet weak var homebackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1.layer.cornerRadius = 22
        button2.layer.cornerRadius = 22
        button3.layer.cornerRadius = 22
        button4.layer.cornerRadius = 22
        button5.layer.cornerRadius = 22
        
        paralax(toView: homebackgroundImage, magnitude: 22 )
        
    }

    
    func paralax(toView view: UIView, magnitude: Float) {
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x" , type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = -magnitude
        xMotion.maximumRelativeValue = magnitude
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y" , type: .tiltAlongHorizontalAxis)
        
        yMotion.minimumRelativeValue = -magnitude
        yMotion.maximumRelativeValue = magnitude
        
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [xMotion, yMotion]
        view.addMotionEffect(group)
    
    }
    
    

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
    

}
