//
//  ViewController.swift
//  guessinggame
//
//  Created by Zhusupbekova, May on 2018-01-15.
//  Copyright © 2018 Zhusupbekova, May. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK:  Outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldNumberGuess: UITextField!
    
    // MARK: Properties (var)
    var game = GuessingGame ()
    
    // MARK : Oveerrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    MARK : Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        //        print the guess that was given
        
        print (textFieldNumberGuess.text)
        //        unwrap the text field's cotents
        //        making sure that the text field is not containing a nil value
        guard let inputGiven = textFieldNumberGuess.text else {
            //            if we could not unwrap the optional, then quit the func
            return
        }
        // Make sure that the field had something in it
        //        handle cases where the user enters text
        guard let guessProvided = Int(inputGiven) else {
            //            if we can't convert to an integer.
            //            then quit and return
            return
        }
        //        print the actual number that was given
        print (guessProvided)
        // print the number that needs to be guessed
        print ("The number to be guessed is :")
        print (game.numberToGuess)
        
        // MARK : Custom functions
        
        // compare the guess provided to the number to be guessesd
        //            if-else if-else
        labelMessage.text = game.compareGuessToNumber (guessMade: guessProvided)
    }
}


