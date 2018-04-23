//
//  SingInVc.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/19/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class SingInVc: UIViewController {

    private let CONTACT_SEGUE = "ContactSegue"
    
    @IBOutlet weak var emailTextF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if AuthProvider.instance.isLooggedIn() {
            
            performSegue(withIdentifier: self.CONTACT_SEGUE, sender: nil)
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    @IBAction func login(_ sender: Any) {
       
        if emailTextF.text != "" && passwordTF.text != "" {
            
    AuthProvider.instance.login(withEmail: emailTextF.text!, password: passwordTF.text!, loginHandler:  { (message) in
            
                if message != nil {
                    self.alertTheUser(title: "Problem with Authentication", messege: message)
             
                } else {
                   
                    self.emailTextF.text = ""
                    self.passwordTF.text = ""
                    self.performSegue(withIdentifier: self.CONTACT_SEGUE, sender: nil)
                    
                }
                })
            
        } else {
            alertTheUser(title: "Email And Password Are Required", messege: "Please enter email and password")
        }
    }
    
    
    
    
    
    
    
    @IBAction func singUp(_ sender: Any) {
    
        if emailTextF.text != "" && passwordTF.text != "" {
            
            AuthProvider.instance.singUp(withEmail: emailTextF.text!, password: passwordTF.text!, loginHandler:  { (message) in
                
                if message != nil {
                self.alertTheUser(title: "Problem with Creating A New User", messege: message)
                } else {
                    self.emailTextF.text = ""
                    self.passwordTF.text = ""
                    self.performSegue(withIdentifier: self.CONTACT_SEGUE, sender: nil)
            }
              })
            
        } else {
            alertTheUser(title: "Email And Password Are Required", messege: "Please enter email and password")
     }
    }
    

    
    
    private func alertTheUser(title: String, messege: String){
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
}  //end class
