//
//  ViewController.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Spring

class ViewController: UIViewController {
    
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
        let randomNumber = Int.random(in: 0..<DataManager.shared.animations.endIndex)
        
        animationView.animation = String(DataManager.shared.animations[randomNumber].name)
        animationView.curve = String(DataManager.shared.animations[randomNumber].curve)
                
        animationView.force = CGFloat.random(in: 1...2)
        animationView.duration = CGFloat.random(in: 1...2)
        animationView.delay = CGFloat.random(in: 0.1...0.5)
        animationView.animate()
        
        animationLabel.text =
            """
            Name: \(animationView.animation)
            Curve: \(animationView.curve)
            Force: \(String(format: "%.2f", animationView.force))
            Duration: \(String(format: "%.2f", animationView.duration))
            Delay: \(String(format: "%.2f", animationView.delay))
            """
    }
}
