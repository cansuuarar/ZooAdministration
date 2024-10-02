//
//  Animal.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 30.09.2024.
//

import Foundation

class Animal {
    var name: String
    var voice: String
    var waterConsumption: Int
    //weak var zooKeeper: ZooKeeper?
   
    init(name: String, voice: String, waterConsumption: Int) {
        self.name = name
        self.voice = voice
        self.waterConsumption = waterConsumption
    }
}
