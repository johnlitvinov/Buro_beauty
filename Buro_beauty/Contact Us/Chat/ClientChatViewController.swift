//
//  SingUpOnlineViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/1/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import Foundation
import Firebase
import FirebaseAuth
import GoogleSignIn


class ClientChatViewController: UIViewController {

     override func viewDidLoad() {
        super.viewDidLoad()

        
//    даем название navigationItem.title
      self.navigationItem.title = "Login Page"
      // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func loginAnonymDidTapped(_ sender: Any) {
    
// аутентификация

      
        
// при нажатии на кнопку LoginAnon осуществляем  преход с LoginView к NavigationVC
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let naviVC = storyboard.instantiateViewController(withIdentifier: "NavigationVC") as! UINavigationController
     let appDelegate = UIApplication.shared.delegate as! AppDelegate
     appDelegate.window?.rootViewController = naviVC
    }
    
    
    
    
    @IBAction func loginGoogleDidTapped(_ sender: Any) {
   
        Auth.auth().signInAnonymously() { (user, error) in
            let isAnonymous = user!.isAnonymous  // true
            let uid = user!.uid
        }
    }
    
} //end class

