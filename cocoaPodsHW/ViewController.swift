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
        runButton.setTitle("Run \(animationView.animation)", for: .normal)
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        animationView.animation = "squeeze"
        animationView.curve = "spring"
        animationView.force = 1
        animationView.duration = 1
        animationView.delay = 0
        
        animationView.animate()
        
        animationLabel.text =
            """
            Name: \(animationView.animation)
            Curve: \(animationView.animation)
            Force: \(animationView.animation)
            Duration: \(animationView.animation)
            Delay: \(animationView.animation)
            """
        
        runButton.setTitle("Run \(animationView.animation)", for: .normal)
//        print(DataManager.shared.animation.randomElement() ?? "")
    }
}

