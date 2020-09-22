//
//  GameScene.swift
//  Pong
//
//  Created by Umang Kumar on 7/8/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SpriteKit
import GameplayKit

enum gamePhase{
    case Ready
    case inGame
    case gameover
}
class GameScene: SKScene {
    var ball = Ball()
    var Score = SKLabelNode()
    var enemyScore = SKLabelNode()
    var playerPad = SKSpriteNode()
    var enemyPad = SKSpriteNode()
    var phase = gamePhase.Ready
    var playerScore = 0
    var compScore = 0
    
    override func didMove(to view: SKView) {
        Score = self.childNode(withName: "scoreLabel") as! SKLabelNode
        enemyScore = self.childNode(withName: "enemyLabel") as! SKLabelNode

        ball.position = CGPoint(x: size.width/2 , y: size.height/2)

        addChild(ball)
        
        playerPad = self.childNode(withName: "Main")as! SKSpriteNode
        enemyPad = self.childNode(withName: "enemy")as! SKSpriteNode
        
        Score.text = "\(playerScore)"
        enemyScore.text = "\(compScore)"

        resetGame()
                
            }
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?){
        if phase == .Ready{
            phase = .inGame
            startGame()
        }
        if phase == .gameover {
            phase = .Ready
            resetGame()
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches{
            let location = t.location(in: self)
            playerPad.position.x = location.x
        }
    }
    
    override func didSimulatePhysics(){
        if phase == .inGame{
            if ball.position.y < 0{
                compScore += 1
                phase = .gameover}
                enemyScore.text = "\(compScore)"
            if ball.position.y > size.height{
                    
                    playerScore += 1
                    phase = .gameover
                    Score.text = "\(playerScore)"
            }
            
                
            if ball.position.x <= 80 || ball.position.x >= size.width-80 {
                ball.physicsBody?.velocity.dx *= -1
            }
            let skillLevel = CGFloat(4)
            if ball.position.x > enemyPad.position.x{
                enemyPad.position.x += skillLevel
            }
            else{
                enemyPad.position.x -= skillLevel
            }
            }
            
            
    }
    
    func resetGame(){
                
        ball.position = CGPoint(x:size.width/2, y:size.height/2)
        ball.physicsBody?.velocity = CGVector(dx:0, dy:0)
        enemyPad.position.x = size.width/2

        

    }
    
    func startGame(){
        var a = CGFloat()
        if randomCGFloat(0,1) > 0.5 {
            a = randomCGFloat(CGFloat.pi*(1/4), CGFloat.pi*(3/4))
        }
        else{
            a = randomCGFloat(-CGFloat.pi*(1/4), -CGFloat.pi*(3/4))
            
        }
        
        let v: CGFloat = 400
        let dx = v*cos(a)
        let dy = v*sin(a)

        ball.physicsBody?.velocity = CGVector(dx: dx, dy: dy)
    }
}
