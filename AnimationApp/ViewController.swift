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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func runButtonClicl(_ sender: UIButton) {
        if animationCount < 3 {
            animationCount += 1
        } else {
            animationCount = 1
        }
        nextAnimation(numberOfAnimation: animationCount)
        sender.setTitle("Следующая анимация", for: .normal)
    }
    
    func nextAnimation(numberOfAnimation: Int){

        switch numberOfAnimation {
        case 1:
            springView.animation = "shake"
            springView.duration = 1
            springView.curve = "spring"
            springView.animate()
            descriptionLabel.text = "Animation: shake \n duration: 1 \n curve: spring"
        case 2:
            springView.animation = "squeeze"
            springView.duration = 2
            springView.curve = "easeIn"
            springView.animate()
            descriptionLabel.text = "Animation: squeeze \n duration: 2 \n curve: easeIn"

        case 3:
            springView.animation = "swing"
            springView.duration = 3
            springView.curve = "easeOut"
            springView.animate()
            descriptionLabel.text = "Animation: swing \n duration: 3 \n curve: easeOut"

        default:
            break
        }
    }
    
}

