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
        
    callUS.layer.cornerRadius = callUS.frame.width / 2
   
//    паралакс эффект
//    paralax(toView: backgroundImage, magnitude: 50 )
    }
    
    @IBAction func contactUs(_ sender: Any) {
    self.tabBarController?.selectedIndex = 4
    }
    
    
    
//    изменение статус бара с черного на белый цвет
   
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return.lightContent
    }
   
    

//
//func paralax(toView view: UIView, magnitude: Float) {
//
//    let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x" , type: .tiltAlongHorizontalAxis)
//    xMotion.minimumRelativeValue = -magnitude
//    xMotion.maximumRelativeValue = magnitude
//
//    let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y" , type: .tiltAlongHorizontalAxis)
//
//    yMotion.minimumRelativeValue = -magnitude
//    yMotion.maximumRelativeValue = magnitude
//
//
//    let group = UIMotionEffectGroup()
//    group.motionEffects = [xMotion, yMotion]
//    view.addMotionEffect(group)
//
//  }
//
    
    
} //end class


   

