//
//  ViewController.swift
//  cocoaPodsHW
//
//  Created by Marius Malyshev on 26.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runButton.setTitle("Button Title", for: .normal)
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        animationView.animation = "squeeze"
        animationView.animate()
        runButton.setTitle("Button", for: .normal)

//        runButton.titleLabel = "asdf"
    }
}

