//
//  Zoo.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 1.10.2024.
//

import UIKit

class Zoo {
    var dailyWaterLimit = 100
    var budget = 5000
    var animals: [Animal]
    var zooKeepers: [ZooKeeper]
    
    init(dailyWaterLimit: Int = 100, budget: Int = 5000, animals: [Animal], zooKeepers: [ZooKeeper]) {
        self.dailyWaterLimit = dailyWaterLimit
        self.budget = budget
        self.animals = animals
        self.zooKeepers = zooKeepers
    }
    
}

