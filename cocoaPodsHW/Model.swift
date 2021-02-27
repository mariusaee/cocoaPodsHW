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
    var allIn: String {
                        """
                        Name: \(name)
                        Curve: \(curve)
                        Force: \(String(format: "%.2f", force))
                        Duration: \(String(format: "%.2f", duration))
                        Delay: \(String(format: "%.2f", delay))
                        """
    }
    
    static func getAnimation(with name: String) -> Animation {
        Animation(name: name,
                  curve: DataManager.shared.animationCurve.randomElement() ?? "spring",
                  force: CGFloat.random(in: 1...2),
                  duration: CGFloat.random(in: 0.5...1.5),
                  delay: CGFloat.random(in: 0.1...0.5))
    }
    
    static func getName() -> String {
        DataManager.shared.animationName.randomElement() ?? "pop"        
    }
}

