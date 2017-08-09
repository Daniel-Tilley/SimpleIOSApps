//
//  ViewController.swift
//  ShowRandomBook
//
//  Created by Daniel Tilley on 20/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables
    @IBOutlet weak var label: UILabel!
    var bookList = ["Programming with Swift", "IOS Apps for beginners", "How to code in swift", "Random book"]
    
    //functions
    @IBAction func showRandomBook(_ sender: Any) {
        //UInt32 stands for 32 bit Unsigned int type
        let randomNum = Int(arc4random_uniform(UInt32(bookList.count)))
        label.text = bookList[randomNum]
        
        //sets a random colour 
        //drand48 is just a random float generator
        //CGFloat is to specify a float variable
        label.textColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

