//
//  ViewController.swift
//  WarCardFGame
//
//  Created by Red Nguyen on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        
        //randomize number
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        //update image view
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
        else {
            // Tie
        }
    }
    
    
    @IBAction func replayTapped(_ sender: Any) {
        
        leftScore = 0
        
        rightScore = 0
        
        leftScoreLabel.text = String(0)
        
        rightScoreLabel.text = String(0)
    }
    
}

