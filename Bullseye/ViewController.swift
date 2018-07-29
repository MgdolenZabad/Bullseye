//
//  ViewController.swift
//  Bullseye
//
//  Created by Mgdolen Zabad on 7/27/18.
//  Copyright © 2018 MgdolenZabad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = lroundf(slider.value)
        
        startOverButton()

    }
    
   
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String (score)
        roundLabel.text = String (round)

    }
    
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
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
        
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference

        
        let title : String
        
        if difference == 0 {
            title = "Perfect"
            points += 100
        } else if difference < 5 {
            title = "you almost had it"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good !"
        } else {
            title = "not even close..."
        }
        
        score += points

        
        let message = "You Scored \(points) points"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awsome", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func startOverButton() {
        round = 0
        score = 0
        startNewRound()
        
    }
    
}

