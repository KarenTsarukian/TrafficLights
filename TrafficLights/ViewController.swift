//
//  ViewController.swift
//  TrafficLights
//
//  Created by Karen Tsarukian on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    enum Colour {
        case red
        case yellow
        case green
    }
    
    var trafficLightColour = Colour.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        redView.layer.cornerRadius = 70
        yellowView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch trafficLightColour {
        case .red:
            greenView.alpha = 0.3
            redView.alpha = 1.0
            trafficLightColour = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            trafficLightColour = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
            trafficLightColour = .red
        }
        
    }
    
}

