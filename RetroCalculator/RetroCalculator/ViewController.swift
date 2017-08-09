//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Mark Price on 7/15/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit
import AVFoundation //audio player library

class ViewController: UIViewController {
    @IBOutlet weak var outputLbl: UILabel!
    
    //player to play the sound
    var btnSound: AVAudioPlayer!
    
    //enum is a group of common things
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    //holds the current enum
    var currentOperation = Operation.Empty
    //holds a group operation
    var runningNumber = ""
    
    //string for calculation
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //specify the path to the sound file
        //bundle is basically a group of items
        //below is a string
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        //change to URL because IOS uses URL
        let soundURL = URL(fileURLWithPath: path!)
        
        //like try catch
        //try create an audo player
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        outputLbl.text = "0"
    }
    
    //drag action to each button to assign that function to the button
    @IBAction func numberPressed(sender: UIButton) {
        //call play sound when button pressed
        playSound()
        
        //gets the number tag
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
    }
    
    //drag functions to buttons
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(operation: .Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(operation: .Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(operation: currentOperation)
    }
    
    //code to play sound
    func playSound() {
        if btnSound.isPlaying {
            btnSound.stop()
        }
        
        btnSound.play()
    }
    
    //process the button clicks and pass in our enum
    func processOperation(operation: Operation) {
        playSound()
        
        //check that current operation is not empty
        if currentOperation != Operation.Empty {
            //A user selected an operator, but then selected another operator without first entering a number
            if runningNumber != "" {
                
                rightValStr = runningNumber
                runningNumber = ""
                
                //check current operation and do stuff
                if currentOperation == Operation.Multiply {
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                } else if currentOperation == Operation.Divide {
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                } else if currentOperation == Operation.Subtract {
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                } else if currentOperation == Operation.Add {
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
                leftValStr = result
                outputLbl.text = result
            }
            
            currentOperation = operation
            
        } else {
            //This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }


}

