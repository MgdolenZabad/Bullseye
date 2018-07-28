//
//  ViewController.swift
//  Bullseye
//
//  Created by Mgdolen Zabad on 7/27/18.
//  Copyright © 2018 MgdolenZabad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    var targetValue : Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value)
        
        startNewRound()

    }
    
    func updateTargetLabel() {
        targetLabel.text = String(targetValue)
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateTargetLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("Slider Value is : \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert() {
        
        var message = "the value of the slider is : \(currentValue)" + "\nThe target Value is : \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    
}

