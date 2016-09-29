//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Alexander Mason on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double,
         driver: String, sponsors: [String]) {
    self.driver = driver
    self.sponsors = sponsors
    super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let accelerantAmount = maxSpeed * (1/5)
        if speed + accelerantAmount <= maxSpeed {
            speed += accelerantAmount
        }
    }
    
    override func decelerate() {
        let decelerateAmount = maxSpeed * (1/5)
        if speed - decelerateAmount >= 0 {
            speed -= decelerateAmount
        }
    }
    
    func driftRight() {
        if speed > 0 {
            heading += 90
            let newSpeed = speed * (1/4)
            speed -= newSpeed
            if heading > 360 {
                heading = heading - 360
            }
            if heading < 0 {
                heading = heading + 360
            }
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            heading -= 90
            let newSpeed = speed * (1/4)
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
