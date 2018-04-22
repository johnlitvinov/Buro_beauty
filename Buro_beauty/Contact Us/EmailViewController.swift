//
//  EmailViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/3/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate  {


    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var buttonSend: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//   set dimensions and parameters for the buttons
    buttonSend.layer.cornerRadius = 22
    nameField.layer.cornerRadius = 22
    emailField.layer.cornerRadius = 22
    messageField.layer.cornerRadius = 22
    self.navigationItem.title = "Email Us"
    }

//   keyboard control
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    
//  send email
    
    @IBAction func sendEmail(_ sender: Any) {
        
        if MFMailComposeViewController.canSendMail() {
            let messageCompose : MFMailComposeViewController = MFMailComposeViewController()
            messageCompose.mailComposeDelegate = self
            let recipients = ["burobeauty2017@gmail.com"]
            messageCompose.setToRecipients(recipients)
            messageCompose.setSubject(nameField.text! + " Application @Buro_beauty")
            messageCompose.setMessageBody("""
                Name: \(nameField.text!)
                Email: \(emailField.text!)
                Message: \(messageField.text!)
                """, isHTML: false)
            self.present(messageCompose, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Accounts", message: "Please log into your email account in the settings", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        self.dismiss(animated: true, completion: nil)
    }
    

}  // end class
