//
//  Data.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 27.02.2021.
//

import Foundation


class DataManager {
    
    static let shared = DataManager()
    
    let animationName = [
        "slideLeft","slideRight","slideDown","slideUp","squeezeLeft",
        "squeezeRight","squeezeDown","squeezeUp","fadeIn","fadeOut",
        "fadeOutIn","fadeInLeft","fadeInRight","fadeInDown","fadeInUp",
        "zoomIn","zoomOut","fall","shake","pop","flipX","flipY",
        "morph","squeeze","flash","wobble","swing"
    ]
    
    let animationCurve = [
        "easeIn","easeOut","easeInOut","linear","spring","easeInSine",
        "easeOutSine","easeInOutSine","easeInQuad","easeOutQuad",
        "easeInOutQuad","easeInCubic","easeOutCubic","easeInOutCubic",
        "easeInQuart","easeOutQuart","easeInOutQuart","easeInQuint",
        "easeOutQuint","easeInOutQuint","easeInExpo","easeOutExpo",
        "easeInOutExpo","easeInCirc","easeOutCirc","easeInOutCirc",
        "easeInBack","easeOutBack","easeInOutBack"
    ]
    
    private init() {}
}
