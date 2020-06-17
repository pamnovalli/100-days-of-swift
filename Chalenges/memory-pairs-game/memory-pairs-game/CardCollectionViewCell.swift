//
//  CardCollectionViewCell.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 15/06/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var btnCard: UIButton!
    @IBOutlet weak var imgCard: UIImageView!
    
    var turned = false
    
    @IBAction func cardTapped(_ sender: UIButton) {
        if turned {
            btnCard.backgroundColor = .blue
            imgCard.isHidden = true
            turned = false
        } else {
            imgCard.isHidden = false
            turned = true
            btnCard.backgroundColor = .lightGray
        }
    }
}
