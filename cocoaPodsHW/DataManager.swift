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
//                  force: CGFloat.random(in: 1...2),
//                  duration: CGFloat.random(in: 1...2),
//                  delay: CGFloat.random(in: 0.1...0.3)),
        Animation(name: "pop",
                  curve: "linear"),
//                  force: CGFloat.random(in: 1...2),
//                  duration: CGFloat.random(in: 1...2),
//                  delay: CGFloat.random(in: 0.1...0.3)),
        Animation(name: "wobble",
                  curve: "easeIn")
//                  force: CGFloat.random(in: 1...2),
//                  duration: CGFloat.random(in: 1...2),
//                  delay: CGFloat.random(in: 0.1...0.3)),
    ]

    private init () {}
}

