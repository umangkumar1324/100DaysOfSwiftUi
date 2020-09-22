//
//  Ball.swift
//  Pong
//
//  Created by Umang Kumar on 7/8/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SpriteKit

class Ball: SKNode {
    
    var circle = SKShapeNode()
    var radius : CGFloat = 10
    
    override init(){
        super.init()
        circle = SKShapeNode(circleOfRadius: radius)
        circle.fillColor = UIColor.white
        addChild(circle)
        physicsBody = SKPhysicsBody(circleOfRadius:radius)
        physicsBody?.isDynamic = true
        physicsBody?.affectedByGravity = false
        physicsBody?.allowsRotation = true
        physicsBody?.linearDamping = 0
        physicsBody?.angularDamping = 0
        physicsBody?.friction = 0
        physicsBody?.restitution = 1
        physicsBody?.categoryBitMask = 2
        physicsBody?.collisionBitMask = 1
        physicsBody?.contactTestBitMask = 1


    }
    required init(coder aDecoder: NSCoder){
        fatalError("init coder has not been initialized")
    }
}



