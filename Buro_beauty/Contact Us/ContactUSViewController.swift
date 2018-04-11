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
    
//    кординаты Buro_beauty
    var latitude = 53.932746
    var longitude = 27.654987
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        устанавливает радиус углов имеющихся кнопок
         button1.layer.cornerRadius = 22
         button2.layer.cornerRadius = 22
         button3.layer.cornerRadius = 22
         button4.layer.cornerRadius = 22
       
        
        
//        маштаб на карте
        let screenSizeOfMap = MKCoordinateSpanMake(0.022, 0.022)
        let region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: screenSizeOfMap)
        mapView.setRegion(region, animated: true)
        
        
        
//        установка точки обозначения бюро на карте с надписями
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
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    присоединили кнопку и сделали переход к навигатору гугл мэмпс  для определения расстояния
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http:maps.google.com/maps?daddr=\(latitude),\(longitude)")!, options:[:], completionHandler: nil)
    }
    
    
//    связаться с бюро
    @IBAction func callUs(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "tel://+375296591807")!, options: [:], completionHandler: nil)
    }
    
    

   

}  //end class
