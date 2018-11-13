//
//  ViewController.swift
//  Workout Buddy
//
//  Created by Alicia Chau on 7/15/18.
//  Copyright © 2018 Alicia Chau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5", "dice6"]
    let workoutArray = ["burpee", "squat", "lunge", "plank", "mountain climber", "up up down down", "leg lift"]
    @IBOutlet weak var randomReps: UITextField!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   @IBAction func rollPressButton(_ sender: UIButton) {
    updateDiceImage()
    updateWorkout()
    }
    func updateDiceImage() {
    randomDiceIndex1=Int(arc4random_uniform(6))
    randomDiceIndex2=Int(arc4random_uniform(6))
    
        diceImageView1.image = UIImage (named: diceArray [randomDiceIndex1])
        diceImageView2.image = UIImage (named: diceArray [randomDiceIndex2])
        
    }
    func updateWorkout() {
        randomReps.text = workoutArray[randomDiceIndex1]
    }
}

