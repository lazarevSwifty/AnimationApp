//
//  Animation.swift
//  AnimationApp
//
//  Created by Владислав Лазарев on 22/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import Foundation

struct Animation {
    var animation: String
    var duration: Int
    var curve: String
    
    static func getAnimations() -> [Animation] {
        
        var animations: [Animation] = []
        
        for index in 0...DataAnimation.animation.count - 1 {
            animations.append(Animation(animation: DataAnimation.animation[index],
                                        duration: Int.random(in: 1...4),
                                        curve: DataAnimation.curve[Int.random(in: 0...4)]))
        }
        
        return animations
    }
}



