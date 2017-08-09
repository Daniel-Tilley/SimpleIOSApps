//
//  VideoVC.swift
//  partyRock
//
//  Created by Daniel Tilley on 27/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock{
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get info from vc
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
}
