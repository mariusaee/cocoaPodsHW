//
//  Data.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var animations: [Animation] = [
        Animation(name: "shake",
                  curve: "spring",
                  force: 1,
                  duration: 1,
                  delay: 1),
        Animation(name: "pop",
                  curve: "linear",
                  force: 1,
                  duration: 1,
                  delay: 1),
        Animation(name: "wobble",
                  curve: "easeIn",
                  force: 1,
                  duration: 1,
                  delay: 1)
    ]

    private init () {}
}

