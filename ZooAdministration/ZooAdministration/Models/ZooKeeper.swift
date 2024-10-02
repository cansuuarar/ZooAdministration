//
//  ZooKeeper.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 30.09.2024.
//

import Foundation

class ZooKeeper {
    var name: String
    var animals: [Animal]
    
    init(name: String, animals: [Animal]) {
        self.name = name
        self.animals = animals
    }

    
    func animalCount() -> Int{
        var countOfKeep = animals.count
        return countOfKeep
    }
}

