//
//  MapLocationManager.swift
//  Cadence
//
//  Created by John Gainfort Jr on 7/29/18.
//  Copyright © 2018 John G. Gainfort, Jr. All rights reserved.
//

import Foundation
import CoreLocation

class MapLocationManager: NSObject {

    var mapViewModel: MapViewModel?
    private let locationManager = CLLocationManager()

    override init() {
        super.init()

        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self

        let status = CLLocationManager.authorizationStatus()
        let authorized = status != .notDetermined && status != .denied && status != .authorizedWhenInUse
        if !authorized {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }

        start()
    }

    private func start() {
        locationManager.startUpdatingLocation()
        locationManager.startUpdatingHeading()
    }

}

extension MapLocationManager: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let vm = mapViewModel, let first = locations.first else { return }

        vm.updateLocation(first.coordinate)
    }

}
