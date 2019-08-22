//
//  ViewController.swift
//  AnimationApp
//
//  Created by Владислав Лазарев on 19/08/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var runButton: SpringButton!
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var animationCount = 0
    
    let animations = Animation.getAnimations()
    
    @IBAction func runButtonClicl(_ sender: UIButton) {
        if animationCount < animations.count - 1 {
            animationCount += 1
        } else {
            animationCount = 1
        }
        nextAnimation(numberOfAnimation: animationCount)
        sender.setTitle("Следующая анимация", for: .normal)
    }
    
    func nextAnimation(numberOfAnimation: Int){
        
            springView.animation = animations[numberOfAnimation].animation
            springView.duration = CGFloat(animations[numberOfAnimation].duration)
            springView.curve = animations[numberOfAnimation].curve
            springView.animate()
            descriptionLabel.text = "Animation: \(springView.animation) \n duration: \(springView.duration) \n curve: \(springView.curve)"
    }
    
}

