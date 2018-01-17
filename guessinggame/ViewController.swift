//
//  ViewController.swift
//  guessinggame
//
//  Created by Zhusupbekova, May on 2018-01-15.
//  Copyright © 2018 Zhusupbekova, May. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberGuess: UITextField!
    @IBOutlet var GuessMade: UIView!
    var numberToGuess = arc4random_uniform(501) // Generate a number between 0 and 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guessMade( _ sender : Any ) {
        print ("A guess was made")
        print (numberGuess.text)
        
        // Make sure that the field had something in it
        guard let inputGiven = numberGuess.text else {
            // If the field had 'nil' (nothing), return
            return
        }
        
        // Convert the string into an Int
        guard let guessMade = Int(inputGiven) else {
            return
        }
        
        //    compare the guess made to the secret number
        if guessMade == numberToGuess {
            print ("You got it")
        }

    }
}

