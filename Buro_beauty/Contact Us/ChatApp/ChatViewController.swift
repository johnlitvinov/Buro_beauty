//
//  ChatViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/20/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loginAnonomy()
    }


    func loginAnonomy() {
        
        Auth.auth().signInAnonymously() {
            (user,error) in
            if let error = error {
                print("Cannot Login")
            }else{
                print("User UID \(user?.uid)")
                
            }
        }
    }

} //end class
