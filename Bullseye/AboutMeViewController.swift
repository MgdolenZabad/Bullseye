//
//  AboutMeViewController.swift
//  Bullseye
//
//  Created by Mgdolen Zabad on 7/29/18.
//  Copyright © 2018 MgdolenZabad. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
