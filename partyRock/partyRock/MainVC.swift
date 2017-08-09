//
//  ViewController.swift
//  partyRock
//
//  Created by Daniel Tilley on 27/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoTitleTest = "Party Rock Anthem"
        let imageURLTest = "http://images2.mtv.com/uri/mgid:file:docroot:mtv.com:/crop-images/2013/09/10/lmfao.jpg?enlarge=false&maxdimension=1300&matte=true&matteColor=black&quality=0.85"
        let videoURLTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  1" )
        let p2 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  2" )
        let p3 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  3" )
        let p4 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  4" )
        let p5 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  5" )
        let p6 = PartyRock(imageURL: imageURLTest, videoURL: videoURLTest, videoTitle: videoTitleTest + "  6" )

        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        //set delegate and data source
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //required functions
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Give me a row, and if you can't, create a new one of type PartyCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            //get current row in array
            let partyRock = partyRocks[indexPath.row]
            
            //update the cell
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    //how many rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
        
    }
    
    //prepare party rock object and send to new screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC{
            
            if let party = sender as? PartyRock{
                destination.partyRock = party
            }
        }
    }
}

