//
//  AnimalManager.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 3.10.2024.
//

import Foundation

class AnimalManager {
    
    static let shared = AnimalManager()
    var animals: [Animal] = []
    
    private init() {}
}
