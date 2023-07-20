//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    let allDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    func rollDice() {
        diceImageView1.image = self.allDice[Int.random(in: 0...5)]
        diceImageView2.image = self.allDice[Int.random(in: 0...5)]
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        self.rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if(event?.subtype == UIEvent.EventSubtype.motionShake) {
                self.rollDice()
            }
        }
}

