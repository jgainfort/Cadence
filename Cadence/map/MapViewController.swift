//
//  MapViewController.swift
//  Cadence
//
//  Created by John Gainfort Jr on 7/29/18.
//  Copyright © 2018 John G. Gainfort, Jr. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    private let locationManager = MapLocationManager()
    private let mapViewModel = MapViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.mapViewModel = mapViewModel
        mapView.delegate = self
        mapView.showsUserLocation = true

        if let mapType = MKMapType(rawValue: 0) {
            mapView.mapType = mapType
        }

        if let userTrackingMode = MKUserTrackingMode(rawValue: 2) {
            mapView.userTrackingMode = userTrackingMode
        }
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

extension MapViewController: MKMapViewDelegate {

}
