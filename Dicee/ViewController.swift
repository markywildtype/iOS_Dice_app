 //
//  ViewController.swift
//  Dicee
//
//  Created by Mark Blanford on 30/04/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDice(diceLeft, diceRight, diceArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice(diceLeft, diceRight, diceArray)
    }
    
    func rollDice(_ imageView: UIImageView, _ imageView2: UIImageView, _ array: Array<String>) {
        let randomIndex: Int = Int(arc4random_uniform(6))
        let randomIndex2: Int = Int(arc4random_uniform(6))
        imageView.image = UIImage(named: array[randomIndex])
        imageView2.image = UIImage(named: array[randomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice(diceLeft, diceRight, diceArray)

    }
}

