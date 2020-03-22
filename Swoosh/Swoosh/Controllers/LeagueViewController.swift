//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by lebose on 2020/03/21.
//  Copyright © 2020 lebose. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    var Player: player!
    
    @IBOutlet weak var nextBtn: BoarderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initialze player
        Player = player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func coedTapped(_ sender: Any) {
        selectedLeague(leagueType: "co-ed")
    }
    
    @IBAction func mansTapped(_ sender: Any) {
        selectedLeague(leagueType: "mans")
    }
    
    @IBAction func womansTapped(_ sender: Any) {
        selectedLeague(leagueType: "womans")
    }
    
    func selectedLeague(leagueType:String) {
        Player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVS = segue.destination as? SkillVCViewController {
            skillVS.Player = Player
        }
    }
}
