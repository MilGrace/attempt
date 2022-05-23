//
//  SecondScene.swift
//  attempt
//
//  Created by  on 5/18/22.
//

import Foundation
import SpriteKit


class SecondScene: SKScene
{
    var homework = SKSpriteNode(imageNamed: "homework")
    var cooking = SKSpriteNode(imageNamed: "cooking")
    
    override func didMove(to view: SKView)
    {
        homework = childNode(withName: "homework") as! SKSpriteNode
        cooking = childNode(withName: "cooking") as! SKSpriteNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        let touch = touches.first!.location(in: self)
        
        if homework.frame.contains(touch)
        {
            let homeworkScene = HomeworkScene(fileNamed: "HomeworkScene")
            homeworkScene?.scaleMode = .aspectFill
            let reveal = SKTransition.flipHorizontal(withDuration: 0)
            view?.presentScene(homeworkScene!, transition: reveal)
        }
        if cooking.frame.contains(touch)
        {
            let cookingScene = CookingScene(fileNamed: "CookingScene")
            cookingScene?.scaleMode = .aspectFill
            let reveal = SKTransition.flipHorizontal(withDuration: 0)
            view?.presentScene(cookingScene!, transition: reveal)
        }
    }
}
