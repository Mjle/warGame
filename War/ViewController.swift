//
//  ViewController.swift
//  War
//
//  Created by Michael Le on 4/30/16.
//  Copyright © 2016 Michael Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    
    // Array of cards declared here
    var cardNamesArray:[String] = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* This titles the playRoundButton "Play"
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
       
        // Card 1 Image View Randomization + display
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Card 2 Image View Randomization + display
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        // Determine which card is a winner
        if firstRandomNumber > secondRandomNumber {
            
            self.playerScore += 1
            self.playerScoreLabel.text = String(playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
            //TODO: what to do when equals
        }
        else {
            
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

