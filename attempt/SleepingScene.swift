//
//  SleepingScene.swift
//  attempt
//
//  Created by  on 5/23/22.
//

import Foundation
import SpriteKit

class SleepingScene: SKScene
{
    var returnH = SKSpriteNode(imageNamed: "returnH")
    
    override func didMove(to view: SKView)
    {
        returnH = childNode(withName: "returnH") as! SKSpriteNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let touch = touches.first!.location(in: self)
        
        if returnH.frame.contains(touch)
        {
            let returnScene = SecondScene(fileNamed: "SecondScene")
            returnScene?.scaleMode = .aspectFill
            let reveal = SKTransition.flipHorizontal(withDuration: 0)
            view?.presentScene(returnScene!, transition: reveal)
        }
    }
}

