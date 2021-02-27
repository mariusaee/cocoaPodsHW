//
//  File.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 27.02.2021.
//

import Spring

struct Animation {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        Animation(name: DataManager.shared.animationName.randomElement() ?? "pop",
                  curve: DataManager.shared.animationCurve.randomElement() ?? "easeIn",
                  force: CGFloat.random(in: 1...2),
                  duration: CGFloat.random(in: 0.5...1.5),
                  delay: CGFloat.random(in: 0.1...0.5))
    }
}


