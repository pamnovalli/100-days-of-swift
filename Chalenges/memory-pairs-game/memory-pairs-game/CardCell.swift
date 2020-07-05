//
//  CardCollectionViewCell.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 15/06/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class CardCell: UICollectionViewCell {
    @IBOutlet private weak var frontImageView: UIImageView!
    @IBOutlet private weak var backImageView: UIImageView!
    private var card = Card(image: "")
    
    func load(card: Card) {
        self.card = card
        frontImageView.isHidden = true
        backImageView.backgroundColor = UIColor.blue
        setupCard() 
    }
    
    func setupCard() {
        frontImageView.image = UIImage(named: card.image)
        
        frontImageView.layer.cornerRadius = 5.0
        backImageView.layer.cornerRadius = 5.0
        frontImageView.layer.masksToBounds = true
        backImageView.layer.masksToBounds = true
    }
    
    func showCard(_ show: Bool) {
        frontImageView.isHidden = false
        backImageView.isHidden = false
        
        if show {
            UIView.transition(
                from: backImageView,
                to: frontImageView,
                duration: 0.5,
                options: [.transitionFlipFromRight, .showHideTransitionViews],
                completion: { (finished: Bool) -> () in
            })
        } else {
            UIView.transition(
                from: frontImageView,
                to: backImageView,
                duration: 0.5,
                options: [.transitionFlipFromRight, .showHideTransitionViews],
                completion:  { (finished: Bool) -> () in
            })
        }
    }
}


