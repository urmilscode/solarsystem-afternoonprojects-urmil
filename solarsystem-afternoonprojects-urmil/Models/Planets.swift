//
//  Planets.swift
//  solarsystem-afternoonprojects-urmil
//
//  Created by Urmil Shah on 9/6/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import Foundation
import UIKit

class Planet {
    
    ///MARK: - Properties
    
    var name: String
    var diameter: Int
    var dayLength: Double
    var maxMillionKMsFromSun:Double
    init(name:String,diameter:Int,dayLength:Double,maxMillionKMsFromSun:Double) {
        self.name = name
        self.diameter = diameter
        self.dayLength = dayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
    
    
    
    
}
