//
//  Data.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 27.02.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let animationName = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let animationCurve = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    private init() {}
}
