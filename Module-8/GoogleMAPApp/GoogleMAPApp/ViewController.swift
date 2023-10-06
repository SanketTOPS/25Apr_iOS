//
//  ViewController.swift
//  GoogleMAPApp
//
//  Created by MAC03 on 06/10/23.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadGoogleMap()
    }

    func loadGoogleMap()
    {
        //22.315334746344572, 70.80548031664675
        let camera = GMSCameraPosition.camera(withLatitude: 22.315334746344572, longitude: 70.80548031664675, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 22.315334746344572, longitude: 70.80548031664675)
        marker.title = "Rajkot"
        marker.snippet = "Gujarat"
        marker.map = mapView
    }

}

