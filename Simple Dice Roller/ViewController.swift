//
//  ViewController.swift
//  Simple Dice Roller
//
//  Created by Ian Kincaid on 3/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Die Image
    @IBOutlet weak var dieImage: UIImageView!
    // Result Label
    @IBOutlet weak var dieResult: UILabel!
    // Roll button
    @IBAction func rollDie(_ sender: Any) {
        // Generate random number between 1 and 6
        let randomNumber = arc4random_uniform(6) + 1
        // set dieResult text to randomNumber
        self.dieResult.text = String(randomNumber)
        // switch statement changes dieImage based on randomNumber
        switch randomNumber {
        case 1:
            self.dieImage.image = UIImage(named: "dice1")
        case 2:
            self.dieImage.image = UIImage(named: "dice2")
        case 3:
            self.dieImage.image = UIImage(named: "dice3")
        case 4:
            self.dieImage.image = UIImage(named: "dice4")
        case 5:
            self.dieImage.image = UIImage(named: "dice5")
        case 6:
            self.dieImage.image = UIImage(named: "dice6")
        default:
            return
        }
    }


}

