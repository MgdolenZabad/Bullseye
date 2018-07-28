//
//  ViewController.swift
//  Bullseye
//
//  Created by Mgdolen Zabad on 7/27/18.
//  Copyright © 2018 MgdolenZabad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert() {
        
        let alert = UIAlertController(title: "Hello World", message: "this is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
}

