//
//  playSongVC.swift
//  swappingScreens
//
//  Created by Daniel Tilley on 27/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class playSongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        } set{
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        songTitleLbl.text = selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
