//
//  GameScene.swift
//  attempt
//
//  Created by  on 5/6/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    
    
    var button = SKSpriteNode(imageNamed: "playicon")
    
    override func didMove(to view: SKView)
    {
        button.position = CGPoint(x: size.width * 0.1, y: size.height * 0.9)
        button.name = "playButton"
        button.size = CGSize(width: button.size.width * 0.8, height: button.size.height * 0.8)
        button.isHidden = true
        addChild(button)
        
        button = childNode(withName: "playButton") as! SKSpriteNode
       

    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!.location(in: self)
        
        
        
        if button.frame.contains(touch)
        {
           
        }
    }
    
    
    // Get label node from scene and store it for use later
    func didMoveToView(view: SKView) {
     

    // Create shape node to use during mouse interaction

}
    
    
    
    override func update(_ currentTime: TimeInterval)
{
        // Called before each frame is rendered
}

    
    
}
