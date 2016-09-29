//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Alexander Mason on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        let accelerantAmount = maxSpeed * (1/10)
        if speed + accelerantAmount <= maxSpeed {
            speed += accelerantAmount
        }
    }
    
    func decelerate() {
        let decelerateAmount = maxSpeed * (1/10)
        if speed - decelerateAmount >= 0 {
            speed -= decelerateAmount
        }
    }
    
    func turnRight() {
        if speed > 0 {
            heading += 90
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = heading + 360
            }
            speed = (speed / 2)
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading -= 90
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = heading + 360
            }
            speed = (speed / 2)
        }
    }
}
