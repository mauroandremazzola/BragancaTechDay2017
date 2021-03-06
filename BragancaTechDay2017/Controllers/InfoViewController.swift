//
//  InfoViewController.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class InfoViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

   
    @IBOutlet weak var googleMapsImage: UIImageView!
    @IBOutlet weak var wazeImage: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    
     let location = CLLocation(latitude: -22.9225, longitude: -46.5460)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        googleMapsImage.isUserInteractionEnabled = true
        wazeImage.isUserInteractionEnabled = true
        googleMapsImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(googleMapsImageTapped)))
        wazeImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(wazeImageTapped)))
        mapView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openMapForPlace)))
        initMap()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //map
    
    func initMap() {
        self.mapView.showsUserLocation = true
        self.mapView.mapType = .hybrid
        let annotation = MKPointAnnotation()
        annotation.title = "Fatec Bragança Paulista"
        annotation.coordinate = location.coordinate
        mapView.addAnnotation(annotation)
        
        let regionRadius: CLLocationDistance = 200
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func openMapForPlace() {
        let regionDistance:CLLocationDistance = 500
        let coordinates = location.coordinate
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Fatec Bragança Paulista"
        mapItem.openInMaps(launchOptions: options)
    }

    //mark method
 
    func googleMapsImageTapped()  {
        if UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!) {
            UIApplication.shared.open(URL(string:"comgooglemaps://?q=Fatec+Bragan%C3%A7a+Paulista&center=-22.920449,-46.544016&zoom=18")!, options: [String : Any](), completionHandler: nil)
        } else {
            UIApplication.shared.open(URL(string:"https://www.google.com.br/maps/place/Fatec+Bragan%C3%A7a+Paulista/@--22.920449,-46.544016/data=!4m6!3m5!1s0x94ceca5d854e851b:0x1dbcd45ef26bb640!4b1!8m2!3d-22.9204567!4d-46.5441127")!, options: [String : Any](), completionHandler: nil)
        }
    }
    
    func wazeImageTapped()  {
        if UIApplication.shared.canOpenURL(URL(string:"waze://")!) {
            UIApplication.shared.open(URL(string:"waze://?q=FATEC%20Braganca%20Paulista,ll=-22.9203&lon=-46.54406z=18,navigate=no")!, options: [String : Any](), completionHandler: nil)
        } else {
            UIApplication.shared.open(URL(string:"http://itunes.apple.com/us/app/id323229106")!, options: [String : Any](), completionHandler: nil)
        }
    }
}
