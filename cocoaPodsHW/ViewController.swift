//
//  ViewController.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    var nextAnimation = Animation.getName()
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 10
        
        let currentAnimation = Animation.getAnimation(with: nextAnimation)
        animationLabel.text = currentAnimation.allIn
        
        runButton.setTitle("\(currentAnimation.name)", for: .normal)
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        let currentAnimation = Animation.getAnimation(with: nextAnimation)
        
        animationView.animation = currentAnimation.name
        animationView.curve = currentAnimation.curve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        
        animationView.animate()
        
        animationLabel.text = currentAnimation.allIn

        nextAnimation = Animation.getName()
        
        runButton.setTitle("\(nextAnimation)", for: .normal)

    }
}
