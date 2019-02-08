//
//  ViewController.swift
//  Dice App
//
//  Created by Eslam Hassan on 1/22/19.
//  Copyright © 2019 Apple-Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // outlet
    @IBOutlet weak var ImageViewDice1: UIImageView!
    @IBOutlet weak var ImageViewDice2: UIImageView!
    
    // Variable
    var randomindex1:Int = 0
    var randomindex2:Int = 0
    
    // Constant
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        
    }
    
    @IBAction func PressRollApp(_ sender: UIButton) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        randomindex1 = Int.random(in: 0 ... 5 )
        randomindex2 = Int.random(in: 0 ... 5 )
        ImageViewDice1.image = UIImage(named: diceArray[randomindex1])
        ImageViewDice2.image = UIImage(named: diceArray[randomindex2])
    }
}

