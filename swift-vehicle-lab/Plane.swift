//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Alexander Mason on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool {
        return speed > 0 && altitude > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if inFlight == false {
            speed = maxSpeed * (1/10)
            altitude = maxAltitude * (1/10)
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            let newAltitude = maxAltitude * (1/10)
            if altitude + newAltitude <= maxAltitude {
                altitude += newAltitude
                decelerate()
            }
        }
    }
    
    func dive() {
        if altitude > 0 {
            let newAltitude = maxAltitude * (1/10)
            if altitude - newAltitude >= 0 {
                altitude -= newAltitude
                accelerate()
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            let newSpeed = speed * (1/10)
            speed -= newSpeed
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = heading + 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            let newSpeed = speed * (1/10)
            speed -= newSpeed
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = heading + 360
            }
        }
    }
    
}












