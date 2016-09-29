//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Alexander Mason on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    override func climb() {
        if inFlight {
            let newAltitude = maxAltitude * (1/5)
            if altitude + newAltitude <= maxAltitude {
                altitude += newAltitude
                decelerate()
            }
        }
    }
    
    override func dive() {
        if altitude > 0 {
            let newAltitude = maxAltitude * (1/5)
            if altitude - newAltitude >= 0 {
                altitude -= newAltitude
                accelerate()
            }
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
