//
//  ViewController.swift
//  TrafficLightNew
//
//  Created by Egor Ukolov on 27.10.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    let lightTurnOn: CGFloat = 1
    let lightTurnOff: CGFloat = 0.3
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.alpha = lightTurnOff
        greenSignalView.alpha = lightTurnOff
        yellowSignalView.alpha = lightTurnOff
        startButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func startButtonPresswd() {
        
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenSignalView.alpha = lightTurnOff
            redSignalView.alpha = lightTurnOn
            currentLight = .yellow
        case .yellow:
            redSignalView.alpha = lightTurnOff
            yellowSignalView.alpha = lightTurnOn
            currentLight = .green
        case .green:
            yellowSignalView.alpha = lightTurnOff
            greenSignalView.alpha = lightTurnOn
            currentLight = .red
        }
    }
}

