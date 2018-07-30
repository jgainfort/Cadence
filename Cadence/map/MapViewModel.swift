//
//  MapViewModel.swift
//  Cadence
//
//  Created by John Gainfort Jr on 7/29/18.
//  Copyright © 2018 John G. Gainfort, Jr. All rights reserved.
//

import Foundation
import CoreLocation

class MapViewModel {

    var currentLocation = CLLocationCoordinate2D(latitude: 0, longitude: 0)

    init() {}

    func updateLocation(_ location: CLLocationCoordinate2D) {
        currentLocation = location
    }

}
