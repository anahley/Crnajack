//
//  ViewController.swift
//  Blackjack
//
//  Created by 90302556 on 9/21/18.
//  Copyright © 2018 Eden Prairie Schools. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dealerCard: UIImageView!
    
    @IBOutlet weak var playerCard: UIImageView!
    
    @IBOutlet weak var dealerScore: UITextField!
    
    @IBOutlet weak var playerScore: UITextField!
    
    @IBOutlet weak var result: UITextField!
   
    var dealerScoreVar = 0
    
    var playerScoreVar = 0
    
    
    
    
    
    @IBOutlet weak var buttonHit: UIButton!
    
    @IBOutlet weak var buttonStand: UIButton!
    
    func dealerBust() {
        
        if (dealerScoreVar > 21) {
            
            result.text = "YOU WIN"
            result.textColor = UIColor.green
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
    }
    
    
    func Clear() {
        dealerScoreVar = 0
        dealerScore.text = "0"
        playerScoreVar = 0
        playerScore.text = "0"
        
    }
    
    func dealerDraw() {
        
        let randomNum1 = arc4random_uniform(13)
        
        if randomNum1 == 0 {
            
            dealerCard.image = UIImage(named: "AH")
            dealerScoreVar += 1
            dealerScore.text = String(dealerScoreVar)
            
            
        }
            
        else if randomNum1 == 1 {
            
            dealerCard.image = UIImage(named: "2H" )
            dealerScoreVar += 2
            dealerScore.text = String(dealerScoreVar)
            
        }
            
        else if randomNum1 == 2 {
            
            dealerCard.image = UIImage(named: "3H" )
            dealerScoreVar += 3
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 3 {
            
            dealerCard.image = UIImage(named: "4H" )
            dealerScoreVar += 4
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 4 {
            
            dealerCard.image = UIImage(named: "5H" )
            dealerScoreVar += 5
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 5 {
            
            dealerCard.image = UIImage(named: "6H" )
            dealerScoreVar += 6
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 6 {
            
            dealerCard.image = UIImage(named: "7H" )
            dealerScoreVar += 7
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 7 {
            
            dealerCard.image = UIImage(named: "8H" )
            dealerScoreVar += 8
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 8 {
            
            dealerCard.image = UIImage(named: "9H" )
            dealerScoreVar += 9
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 9 {
            
            dealerCard.image = UIImage(named: "10H" )
            dealerScoreVar += 10
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 10 {
            
            dealerCard.image = UIImage(named: "KC" )
            dealerScoreVar += 10
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 11 {
            
            dealerCard.image = UIImage(named: "JC" )
            dealerScoreVar += 10
            dealerScore.text = String(dealerScoreVar)
        }
            
        else if randomNum1 == 12 {
            
            dealerCard.image = UIImage(named: "QC" )
            dealerScoreVar += 10
            dealerScore.text = String(dealerScoreVar)
        }
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        
        buttonHit.setTitle("HIT", for: .normal)
        buttonStand.setTitle("STAND", for: .normal)
        dealerScoreVar = 0
        dealerScore.text = "0"
        playerScoreVar = 0
        playerScore.text = "0"
        result.text = ""
        
    }
    
    @IBAction func buttonHit(_ sender: Any) {
        
        if (dealerScoreVar <= 16) {
            
            dealerDraw()
        }
        
        let randomNum2 = arc4random_uniform(13)
        
        if randomNum2 == 0 {
            
                playerCard.image = UIImage(named: "AH")
                playerScoreVar += 1
                playerScore.text = String(playerScoreVar)
            }
            
            else if randomNum2 == 1 {
            
            playerCard.image = UIImage(named: "2H" )
            playerScoreVar += 2
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 2 {
            
            playerCard.image = UIImage(named: "3H" )
            playerScoreVar += 3
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 3 {
            
            playerCard.image = UIImage(named: "4H" )
            playerScoreVar += 4
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 4 {
            
            playerCard.image = UIImage(named: "5H" )
            playerScoreVar += 5
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 5 {
            
            playerCard.image = UIImage(named: "6H" )
            playerScoreVar += 6
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 6 {
            
            playerCard.image = UIImage(named: "7H" )
            playerScoreVar += 7
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 7 {
            
            playerCard.image = UIImage(named: "8H" )
            playerScoreVar += 8
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 8 {
            
            playerCard.image = UIImage(named: "9H" )
            playerScoreVar += 9
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 9 {
            
            playerCard.image = UIImage(named: "10H" )
            playerScoreVar += 10
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 10 {
            
            playerCard.image = UIImage(named: "KC" )
            playerScoreVar += 10
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 11 {
            
            playerCard.image = UIImage(named: "JC" )
            playerScoreVar += 10
            playerScore.text = String(playerScoreVar)
            
            }
            
            else if randomNum2 == 12 {
            
            playerCard.image = UIImage(named: "QC" )
            playerScoreVar += 10
            playerScore.text = String(playerScoreVar)
            
            }
       
        let playerDistance = 21 - playerScoreVar
        let dealerDistance = 21 - dealerScoreVar
        
        if  (playerScoreVar > 21) {
            
            result.text = "YOU LOSE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
        else if (dealerScoreVar > 21) {
            
            result.text = "YOU WIN"
            result.textColor = UIColor.green
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        } else if ((playerScoreVar == 21) && (dealerScoreVar == 21)) {
            
            result.text = "YOU TIE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
        if ((playerScoreVar < 22) && (dealerScoreVar > 16) && (playerScoreVar > dealerScoreVar)) {
            
            result.text = "YOU WIN"
            result.textColor = UIColor.green
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
            
            
        } else if ((dealerScoreVar > 16) && (playerDistance < dealerDistance)) {
            
            result.text = "YOU LOSE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        } else if (playerScoreVar == 21) {
            
            buttonHit.setTitle("", for: .normal)
            
        }
        
        if ((playerScoreVar < dealerScoreVar) && (dealerScoreVar > 16)) {
            
            buttonStand.setTitle("", for: .normal)
            
        }
        
        if (playerScoreVar == dealerScoreVar) {
            
           buttonStand.setTitle("STAND", for: .normal)
            
        }
        
        if ((playerScoreVar > 21) && (dealerScoreVar > 21)) {
            
            result.text = "YOU TIE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
        
        
    }
    
    
    @IBAction func buttonStand(_ sender: Any) {
        
        buttonHit.setTitle("", for: .normal)
        buttonStand.setTitle("", for: .normal)
        
        if (dealerScoreVar < 17) {
        
        dealerDraw()
        dealerBust()
            
            if (dealerScoreVar < 17) {
                
                dealerDraw()
                dealerBust()
                
                if (dealerScoreVar < 17) {
                    
                    dealerDraw()
                    dealerBust()
                    
                    if (dealerScoreVar < 17) {
                        
                        dealerDraw()
                        dealerBust()
                    }
                }
            }
        
        dealerBust()
        
            if ((dealerScoreVar == playerScoreVar) && (dealerScoreVar > 16)) {
               
                
                result.text = "YOU TIE"
                result.textColor = UIColor.red
                buttonHit.setTitle("", for: .normal)
                buttonStand.setTitle("", for: .normal)
                
                
            }
    
        if (dealerScoreVar > 21) { // good
            
                result.text = "YOU WIN"
                result.textColor = UIColor.green
                buttonHit.setTitle("", for: .normal)
                buttonStand.setTitle("", for: .normal)
            
               
        }
            
        let playerDistance = abs(21 - playerScoreVar)
        let dealerDistance = abs(21 - dealerScoreVar)
        
        if ((dealerScoreVar > 16) && (playerDistance < dealerDistance) && (dealerScoreVar < 22)) {
            
            result.text = "YOU WIN"
            result.textColor = UIColor.green
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
        if ((dealerScoreVar > 16) && (playerDistance > dealerDistance) && (dealerScoreVar < 22)) {
                
        result.text = "YOU LOSE"
        result.textColor = UIColor.red
        buttonHit.setTitle("", for: .normal)
        buttonStand.setTitle("", for: .normal)
                
        }
        
        if ((playerScoreVar == 21) && (dealerScoreVar == 21)) {
            
            result.text = "YOU TIE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
        
        if ((playerScoreVar == dealerScoreVar) && (dealerScoreVar > 16)) {
            
            result.text = "YOU TIE"
            result.textColor = UIColor.red
            buttonHit.setTitle("", for: .normal)
            buttonStand.setTitle("", for: .normal)
            
        }
    }
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}



