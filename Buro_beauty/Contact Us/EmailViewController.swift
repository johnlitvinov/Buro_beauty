//
//  EmailViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/28/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import MessageUI


class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {

    
   
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    
    @IBOutlet weak var sendEmailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendEmailButton.layer.cornerRadius = 22
        
//        self.navigationItem.title = "Email Us"
    }

  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
    self.resignFirstResponder()
    }
    
   
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range:NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    

    
    
    @IBAction func sendEmail(_ sender: Any) {
    
        let messageCompose: MFMailComposeViewController = MFMailComposeViewController()
        
        messageCompose.mailComposeDelegate = self
        
        let recipient = ["john.litvinov89@gmail.com"]
        
        messageCompose.setToRecipients(recipient)
        messageCompose.setSubject(nameField.text! + "Email message from my app @Buro_beauty")
        messageCompose.setMessageBody("""
                          Name: \(nameField.text!)
                          Email: \(emailField.text!)
                          Message: \(messageField.text!)
                          """, isHTML: false)

        self.present(messageCompose, animated: true, completion: nil)
        
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
       
        self.dismiss(animated: true, completion: nil)
    
    }

}
