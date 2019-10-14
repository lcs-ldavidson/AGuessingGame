//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Davidson, Liam on 2019-10-14.
//  Copyright © 2019 Davidson, Liam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    
    //MARK: Initializers
    
    
    //MARK: Methods (functions) - behaviours
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //make an object named synthesizer which is an instance of the class AVSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        //make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        //make an object named utterance, which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //say the message
        synthesizer.speak(utterance)
        
    }


}

