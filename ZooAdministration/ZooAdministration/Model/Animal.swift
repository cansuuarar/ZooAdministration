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
    var zooKeeper: ZooKeeper?
   
    init(name: String, voice: String, waterConsumption: Int, zooKeeper: ZooKeeper?) {
        self.name = name
        self.voice = voice
        self.waterConsumption = waterConsumption
        self.zooKeeper = zooKeeper
    }
}
