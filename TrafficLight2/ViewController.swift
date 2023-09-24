//
//  ViewController.swift
//  TrafficLight2
//
//  Created by swiftbook on 24.09.2023.
//  Copyright © 2023 swiftbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLighView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLighView: UIView!
    @IBOutlet weak var colorButton: UIButton!
    
    private var currentLightIndex = 0
    private let lightColors: [UIColor] = [.red, .yellow, .green]

    override func viewDidLoad() {
        super.viewDidLoad()
        redLighView.backgroundColor = UIColor.red
        redLighView.layer.cornerRadius = min(redLighView.frame.size.width, redLighView.frame.size.height) / 2.0
        redLighView.clipsToBounds = true
        redLighView.alpha = 0.3
        
        yellowLightView.backgroundColor = UIColor.yellow
        yellowLightView.layer.cornerRadius = min(yellowLightView.frame.size.width, yellowLightView.frame.size.height) / 2.0
        yellowLightView.clipsToBounds = true
        yellowLightView.alpha = 0.3
        
        greenLighView.backgroundColor = UIColor.green
        greenLighView.layer.cornerRadius = min(greenLighView.frame.size.width, greenLighView.frame.size.height) / 2.0
        greenLighView.clipsToBounds = true
        greenLighView.alpha = 0.3
        
        colorButton.layer.cornerRadius = 10

    }


    @IBAction func colorButtonPressed() {
        colorButton.setTitle(" NEXT ", for: .normal)
        let nextLight = lightColors[currentLightIndex]
        switch nextLight {
        case .red:
            redLighView.alpha = 1.0
            yellowLightView.alpha = 0.3
            greenLighView.alpha = 0.3
        case .yellow:
            yellowLightView.alpha = 1.0
            redLighView.alpha = 0.3
            greenLighView.alpha = 0.3
        case .green:
            greenLighView.alpha = 1.0
            yellowLightView.alpha = 0.3
            redLighView.alpha = 0.3
        default:
            break
        }
        
        currentLightIndex = (currentLightIndex + 1) % lightColors.count

    }
}

