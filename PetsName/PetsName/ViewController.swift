//
//  ViewController.swift
//  PetsName
//
//  Created by Daniel Tilley on 19/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //setup vars by clicking them in storyboard, holding ctrl and click and drag to view controller
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    //funcrion attached to the buton
    @IBAction func showName(_ sender: Any) {
        label.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

