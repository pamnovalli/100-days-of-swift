//
//  GameScene.swift
//  shooting-gallery-game
//
//  Created by Pamela Ianovalli on 21/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var ballons = ["ballon"]
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.size = CGSize.init(width: 1024, height: 768)
        background.zPosition = -1
        addChild(background)
        
        let ballon = SKSpriteNode(imageNamed: ballons[0])
         ballon.position = CGPoint(x: 300, y: 400)
        ballon.size = CGSize.init(width: 200, height: 200)
        addChild(ballon)
        
    }
    
    
    
    func touchMoved(toPoint pos : CGPoint) {
    
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
