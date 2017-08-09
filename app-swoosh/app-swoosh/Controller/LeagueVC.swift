//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Daniel Tilley on 09/08/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        SelectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomansTapped(_ sender: Any) {
        SelectLeague(leagueType: "womans")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        SelectLeague(leagueType: "coed")
    }
    
    func SelectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    // This will always be called in the other class before ViewDidLoad
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the destination and put it in the variable... (SkillVC class will be stored in the var)
        if let skillVc = segue.destination as? SkillVC{
            skillVc.player = player
        }
    }
}
