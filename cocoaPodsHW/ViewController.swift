//
//  ViewController.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    let currentAnimation = Animation.getAnimation()

    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        runButton.setTitle("Run animation", for: .normal)
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        let currentAnimation = Animation.getAnimation()
        
        animationView.animation = currentAnimation.name
        animationView.curve = currentAnimation.curve
                
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        animationView.animate()
        
        animationLabel.text =
            """
            Name: \(animationView.animation)
            Curve: \(animationView.curve)
            Force: \(String(format: "%.2f", animationView.force))
            Duration: \(String(format: "%.2f", animationView.duration))
            Delay: \(String(format: "%.2f", animationView.delay))
            """
        runButton.setTitle("\(currentAnimation.name)", for: .normal)

    }
}
