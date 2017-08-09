//
//  ViewController.swift
//  app-swoosh
//
//  Created by Daniel Tilley on 08/08/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView! //Title
    @IBOutlet weak var bgImg: UIImageView! //Background Image
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // auto define layouts
        /*swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2,
                              y: 50,
                              width: swoosh.frame.size.width,
                              height: swoosh.frame.size.height)
        
        bgImg.frame = view.frame
        */
        
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}

