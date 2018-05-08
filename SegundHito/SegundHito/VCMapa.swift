//
//  VCMapa.swift
//  SegundHito
//
//  Created by KARYNA AURORA RUELAS GONZALEZ on 19/4/18.
//  Copyright © 2018 KARYNA AURORA RUELAS GONZALEZ. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class VCMapa: UIViewController, MKMapViewDelegate,CLLocationManagerDelegate {
    @IBOutlet var mapa:MKMapView?
    var locationManager:CLLocationManager?
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        DataHolder.sharedInstance.descargarColeccionListas()
        mapa?.showsUserLocation = true
        
        locationManager=CLLocationManager()
        locationManager?.delegate=self
        locationManager?.startUpdatingLocation()
        locationManager?.requestAlwaysAuthorization()
        //        locationManager?.desiredAccuracy=kl
        
        self.agregarPin(titulo: "Mexicali", latitude: 32.6469, longitud: -115.4446)
//        self.agregarPin(titulo: <#T##String#>, latitude: <#T##Double#>, longitud: <#T##Double#>)
        
        mapa?.delegate=self
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
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("mi posicion en lat:", locations[0].coordinate.latitude, " longitud: ", locations[0].coordinate.longitude)
        let mispan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let tempregion:MKCoordinateRegion = MKCoordinateRegion(center: locations[0].coordinate,span: mispan)
        mapa?.setRegion(tempregion, animated: false)
        
    }
    func agregarPin(titulo: String, latitude lat:Double, longitud lon:Double)  {
        let annotation:MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate.latitude = lat
        annotation.coordinate.longitude = lon
        annotation.title = titulo
        mapa?.addAnnotation(annotation)
    }
    func DHDescargarColeccionListasComplete(blFin: Bool) {
        if blFin == true {


        }
    }

}
