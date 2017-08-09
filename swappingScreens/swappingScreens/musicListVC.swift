//
//  musicListVC.swift
//  swappingScreens
//
//  Created by Daniel Tilley on 27/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class musicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        
        let songTitle = "Final Countdown"
        
        //change the screen and send the song title
        performSegue(withIdentifier: "songVc", sender: songTitle)
    }
    
    //function to prepare the data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //check if the screen is there
        if let destination = segue.destination as? playSongVC{
            
            //Check if there is data in the segue
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
    }
    
    //Similar to finish
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
