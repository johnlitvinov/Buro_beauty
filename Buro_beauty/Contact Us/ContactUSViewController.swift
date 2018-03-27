//
//  ContactUSViewController.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/27/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import MapKit


class ContactUSViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.layer.cornerRadius = 22
         button2.layer.cornerRadius = 22
         button3.layer.cornerRadius = 22
         button4.layer.cornerRadius = 22
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
