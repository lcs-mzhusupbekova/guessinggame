//
//  guessing game.swift
//  guessinggame
//
//  Created by Zhusupbekova, May on 2018-01-17.
//  Copyright © 2018 Zhusupbekova, May. All rights reserved.
//

import Foundation
struct GuessingGame {
    
    //    Property
    var numberToGuess : Int
    
    
    //     Initializer
    init () {
        numberToGuess = Int(arc4random_uniform(501))  // generate a number between 1 and 500
    }
    func compareGuessToNumber (guessMade: Int) -> String {
        
        if guessMade == numberToGuess {
            return  "You got it"
        }
        else if guessMade < numberToGuess {
            return "Higher!"
        }
        else {
            return "Lower!"
        }
        
    }
    
}

