//
//  Card.swift
//  memory-pairs-game
//
//  Created by Pamela Ianovalli on 04/07/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit
import Foundation

struct Card: Equatable {
    var id: String
    var image: UIImage
    var show: Bool
    
    init(image: UIImage) {
        self.id = NSUUID().uuidString
        self.image = image
        self.show = false
    }
    
    init(card: Card) {
        self.id = NSUUID().uuidString
        self.image = card.image
        self.show = card.show
    }
    
    func copy() -> Card {
        return Card(card: self)
    }

}

