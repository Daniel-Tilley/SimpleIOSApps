//
//  PartyCellTableViewCell.swift
//  partyRock
//
//  Created by Daniel Tilley on 27/01/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        
        //async threads
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async{
            //try get and image
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    //get the downlaoded image in an ImageView
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch{
                
            }
        }
    }

}
