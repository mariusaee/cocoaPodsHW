//
//  Data.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    var animations: [Animation] = [
        Animation(name: "shake",
                  curve: "spring"),
        Animation(name: "pop",
                  curve: "linear"),
        Animation(name: "wobble",
                  curve: "easeIn")
    ]

    private init () {}
}

