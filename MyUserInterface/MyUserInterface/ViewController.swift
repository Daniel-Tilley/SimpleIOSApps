//
//  ViewController.swift
//  MyUserInterface
//
//  Created by Daniel Tilley on 19/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Setup as outlet because we put stuff into it
    @IBOutlet weak var myLabel: UILabel!
    
    //Setup as action because we do stuff with it
    @IBAction func showLabel(_ sender: Any) {
        //print("Hello, my name is Daniel")
        myLabel.text = "Hello, my name is Daniel"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

