//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.

//  Updated by Jeremy Wang
//  Last updated on 2/14/2023
//  Version 1.1
//  Enhancements:
//  1) Tally Report & gamble with a dealer! :)
//  2) Intro Animation


import UIKit

class ViewController: UIViewController {
    //These are the outlets by dragging the UIElements to the Swift coding pane
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var tallyReport: UILabel!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] //let sets immutable variables (constants), while var sets mutable variables.
                     
        
        let diceArray3 = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        
        let	 randomNum1 = Int.random(in: 0...5)  // randomly generate an integer between 0 and 5, which reprents the index number of the dice array (not the face value)
        let randomNum2 = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[randomNum1]
       
        diceImageView2.image = diceArray[randomNum2]
        
        let totalTally = (randomNum1 + 1) + (randomNum2 + 1)
        
        // Let's make it more fun! :)
        let dealerTally = Int.random(in: 2...12)
        
        var gambleResult = ""    // this has to be a mutable variable!
        
        // Conditional statements with if..else if...else (the most popular decision making structure in programming language!
        //Logical operators: <     <=      ==    >=     >     != (not equal to)
        if totalTally<dealerTally {  //this is the preferred version in Swift without ( ). The CPU will actually do a comparison which will use some computing resources.
            gambleResult = "Sorry, you lose! :("
        } else if (totalTally==dealerTally) {  //this is more traditional and more commonly used in other languages.
            gambleResult = "You have a tie!"
        } else  {   // A good practice - LEAST decision making processes!
            gambleResult = "Congrats! You win! :)"
        }
        
        tallyReport.text = "Your total is \(totalTally)!\n" +
            "Dealer's total is \(dealerTally)!\n" +
            gambleResult
    }
    
    
    
    @IBAction func rollButton2Pressed(_ sender: UIButton) {
        let diceArray1 = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        let diceArray2 = [#imageLiteral(resourceName: "DiceSix"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceOne")]
       
        //Utilize the object-orientated programming techniques, properties & methods!
        diceImageView1.animationImages = diceArray1
        diceImageView1.animationDuration = 2.0
        diceImageView1.animationRepeatCount = 6
        
        diceImageView2.animationImages = diceArray2
        diceImageView2.animationDuration = 2.0
        diceImageView2.animationRepeatCount = 6
        
        diceImageView1.startAnimating()
        diceImageView2.startAnimating()
        
       
    }
    
    
    
}

