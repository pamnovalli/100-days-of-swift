//
//  GameScene.swift
//  project-seventeen
//
//  Created by Pamela Ianovalli on 08/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    var player: SKSpriteNode!
    var scoreLabel: SKLabelNode!
    let possibleEnemias = ["ball", "hammer", "tv"]
    var isGameOver = false
    var enemyAmount = 0
    var gameTimer: Timer?
    var time = 1.0
    var score = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    override func didMove(to view: SKView) {
            gameTimer = Timer.scheduledTimer(timeInterval: time, target: self, selector: #selector(createEnemy), userInfo: nil, repeats: true)

        backgroundColor = .black
        
        if let starfield = SKEmitterNode(fileNamed: "starfield") {
            starfield.position = CGPoint(x: 1024, y: 384)
            starfield.advanceSimulationTime(10)
            self.addChild(starfield)
            starfield.zPosition = -1
        }
        
        player = SKSpriteNode(imageNamed: "player")
        player.position = CGPoint(x: 100, y: 384)
        let texture = SKTexture(imageNamed: "player")
        player.physicsBody = SKPhysicsBody(texture: texture, size: player.size)
        player.physicsBody?.contactTestBitMask = 1
        player.name = "player"
        self.addChild(player )
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel?.position = CGPoint(x: 16, y: 16)
        scoreLabel?.horizontalAlignmentMode = .left
        self.addChild(scoreLabel)
        score = 0
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        for node in children {
            if node.position.x < -300 {
                node.removeFromParent()
            }
        }
        
        if !isGameOver {
            score += 1
        }
    }
    
    @objc func createEnemy() {
        if isGameOver == false {
            enemyAmount += 1
            guard let enemy = possibleEnemias.randomElement() else { return }
            
            let sprite = SKSpriteNode(imageNamed: enemy)
            sprite.position = CGPoint(x: 1200, y: Int.random(in: 50...736))
            addChild(sprite)
            sprite.physicsBody = SKPhysicsBody(texture: sprite.texture!, size: sprite.size)
            sprite.physicsBody?.categoryBitMask = 1
            sprite.physicsBody?.velocity = CGVector(dx: -500, dy: 0)
            sprite.physicsBody?.angularVelocity = 5
            sprite.physicsBody?.linearDamping = 0
            sprite.physicsBody?.angularDamping = 0
            if enemyAmount == 20 {
                time -= 0.1
                enemyAmount = 0

            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        var location = touch.location(in: self)
        
        if location.y < 100 {
            location.y = 100
        } else if location.y > 668 {
            location.y = 668
        }
        
        player.position = location
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if let explosion = SKEmitterNode(fileNamed: "explosion") {
            explosion.position = player.position
            addChild(explosion)
            
            player.removeFromParent()
            
            isGameOver = true
        }
    }
    
    
    
}
