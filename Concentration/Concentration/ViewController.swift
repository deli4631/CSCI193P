//
//  ViewController.swift
//  Concentration
//
//  Created by Dennis Lim on 8/30/19.
//  Copyright © 2019 Dennis Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip: \(flipCount)"
        }
    }
   
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else{
            print("chosen card was not in cardButtons")
        }
        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCard(withEmoji: \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

