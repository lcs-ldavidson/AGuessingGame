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
    @IBOutlet weak var submittedGuess: UITextField!
    
    //MARK: Initializers
    
    
    //MARK: Methods (functions) - behaviours
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       speak("I'm thinking of a number between 1 and 100. Guess what it is.")
        
        //report the target number to the console for testing purposes
        print("For testing purposes, the target number is \(targetNumber)")
        
    }
    
    //will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //obtain the guess value from the text field
        guard let guessText = submittedGuess.text else {
            speak("Enter a value first, dipwad.")
            return
        }
        //try to convert the string into an integer data type
        guard let guessNumber = Int(guessText) else {
            speak("How about entering a number, dummy?")
            return
        }
        
        //for testing purposes, what was the guess
        print("For testing purposes, the guess made was \(guessNumber)")
        
        //give the appropriate feedback to the user
        if guessNumber > targetNumber {
            speak("Guess lower next time.")
        } else if guessNumber < targetNumber {
           speak("Guess higher next time.")
        } else {
            speak("You are correct!")
        }
  
    }
    
    // A function that will speak whatever message is provided
    func speak(_ message: String) {
        
        //make an object named synthesizer which is an instance of the class AVSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        //make an object named utterance, which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //say the message
        synthesizer.speak(utterance)
    }
    
}

