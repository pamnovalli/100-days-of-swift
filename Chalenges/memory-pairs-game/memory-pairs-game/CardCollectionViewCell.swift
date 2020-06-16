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
    
    @IBAction func cardTapped(_ sender: UIButton) {
        sender.isHidden = true
    }
}
