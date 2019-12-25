//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Mikolaj Korbanek on 23/12/2019.
//  Copyright © 2019 Mikolaj Korbanek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.tag)
        updateUI() 
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: .normal)
    }
    
}

