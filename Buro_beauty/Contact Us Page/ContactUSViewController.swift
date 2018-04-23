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
    
    //   snap buttons and maps
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!

    
    //    coordinates Buro_beauty
    var latitude = 53.932746
    var longitude = 27.654987
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configeView()
    }
   
    
        func configeView (){
    //   sets the corner radius of the buttons
        button1.layer.cornerRadius = 22
        button2.layer.cornerRadius = 22
        button3.layer.cornerRadius = 22

    //   the scale on the map
        let screenSizeOfMap = MKCoordinateSpanMake(0.022, 0.022)
        let region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: screenSizeOfMap)
        mapView.setRegion(region, animated: true)

    //   design point
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinAnnatation = MKPointAnnotation()
        pinAnnatation.coordinate = pinLocation
        pinAnnatation.title = """
        @Buro_beauty
        Nail
        Brow
        Eyelashes
        """
        pinAnnatation.subtitle = "Street K.Turovskogo 6, room 146 Minsk, Belarus"
        self.mapView.addAnnotation(pinAnnatation)

    //    style of navigationItem
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    
    //    make the transition to the site to Google maps Navigator to determine the distance
    @IBAction func directions(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http:maps.google.com/maps?daddr=\(latitude),\(longitude)")!, options:[:], completionHandler: nil)
    }
    
    //    make a call
    @IBAction func callUs(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://+375296591807")!, options: [:], completionHandler: nil)
    }
    
}  //end class
