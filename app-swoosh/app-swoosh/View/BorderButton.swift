//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Daniel Tilley on 09/08/2017.
//  Copyright © 2017 Daniel Tilley. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
