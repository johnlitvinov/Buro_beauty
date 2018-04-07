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

//    Переход на инстаграмм
        let url = URL(string: "https://www.instagram.com/buro_beauty_/")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    
//    начало работы actInd
    func webViewDidStartLoad(_ webView: UIWebView) {
    actInd.color = .black // делаем цвет индикатора черным
    actInd.startAnimating()
    }
    
    
    
// конец работы actInd
    func webViewDidFinishLoad(_ webView: UIWebView) {
        actInd.stopAnimating()
   
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
