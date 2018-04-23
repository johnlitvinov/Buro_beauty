//
//  SocialLinkViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 4/3/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit

class SocialLinkViewController: UIViewController, UIWebViewDelegate{
    
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        configeView()
    }
  
    
    func configeView(){
    //    switching to instagram
        let url = URL(string: "https://www.instagram.com/buro_beauty_/")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
    //     navigationItem.title name
        self.navigationItem.title = "Instagram"
    }
    
    //    start of work actInd
    func webViewDidStartLoad(_ webView: UIWebView) {
        actInd.color = .black // make the indicator color black
        actInd.startAnimating()
    }
    
    //    end of work actInd
    func webViewDidFinishLoad(_ webView: UIWebView) {
        actInd.stopAnimating()
    }
    
} //end class
