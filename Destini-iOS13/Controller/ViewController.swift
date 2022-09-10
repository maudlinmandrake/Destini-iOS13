//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyNumber = 0
    
    let story = [
        Story(storyText: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(storyText: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(storyText: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story[0].storyText
        choice1Button.setTitle(story[0].choice1, for: .normal)
        choice2Button.setTitle(story[0].choice2, for: .normal)
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender
        
        if userChoice == choice1Button {

        } else {

        }
        
        func updateUI() {
            storyLabel.text = story[storyNumber].storyText
            choice1Button.setTitle(story[storyNumber].choice1, for: .normal)
            choice2Button.setTitle(story[storyNumber].choice2, for: .normal)
            storyNumber += 1
        }
    
    }
    

}

