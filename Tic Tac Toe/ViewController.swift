//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Randy Le on 2/6/19.
//  Copyright © 2019 ProjectKoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slotOneButton : UIButton!
    @IBOutlet var slotTwoButton : UIButton!
    @IBOutlet var slotThreeButton : UIButton!
    @IBOutlet var slotFourButton : UIButton!
    @IBOutlet var slotFiveButton : UIButton!
    @IBOutlet var slotSixButton : UIButton!
    @IBOutlet var slotSevenButton : UIButton!
    @IBOutlet var slotEightButton : UIButton!
    @IBOutlet var slotNineButton : UIButton!
    
    @IBOutlet var playerLabel : UILabel!
    var isPlayerOne : Bool = true
    var aWinner : Bool = false;
    
    func updateLabel(){
        if(!aWinner){
            if(isPlayerOne){
                playerLabel.text = "Player 1 Turn"
            }
            else{
                playerLabel.text = "Player 2 Turn"
            }
        }

        checkForWinner()
    }
    
    func checkForWinner(){
        if(!aWinner){
            if(slotOneButton.currentTitle == "X" &&
                slotTwoButton.currentTitle == "X" &&
                slotThreeButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotOneButton.currentTitle == "O" &&
                slotTwoButton.currentTitle == "O" &&
                slotThreeButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotFourButton.currentTitle == "X" &&
                slotFiveButton.currentTitle == "X" &&
                slotSixButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotFourButton.currentTitle == "O" &&
                slotFiveButton.currentTitle == "O" &&
                slotSixButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotSevenButton.currentTitle == "X" &&
                slotEightButton.currentTitle == "X" &&
                slotNineButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotSevenButton.currentTitle == "O" &&
                slotEightButton.currentTitle == "O" &&
                slotNineButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotOneButton.currentTitle == "X" &&
                slotFourButton.currentTitle == "X" &&
                slotSevenButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotOneButton.currentTitle == "O" &&
                slotFourButton.currentTitle == "O" &&
                slotSevenButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotTwoButton.currentTitle == "X" &&
                slotFiveButton.currentTitle == "X" &&
                slotEightButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotTwoButton.currentTitle == "O" &&
                slotFiveButton.currentTitle == "O" &&
                slotEightButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotThreeButton.currentTitle == "X" &&
                slotSixButton.currentTitle == "X" &&
                slotNineButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotThreeButton.currentTitle == "O" &&
                slotSixButton.currentTitle == "O" &&
                slotNineButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotOneButton.currentTitle == "X" &&
                slotFiveButton.currentTitle == "X" &&
                slotNineButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotOneButton.currentTitle == "O" &&
                slotFiveButton.currentTitle == "O" &&
                slotNineButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            if(slotThreeButton.currentTitle == "X" &&
                slotFiveButton.currentTitle == "X" &&
                slotSevenButton.currentTitle == "X"){
                playerLabel.text = "PLAYER ONE HAS WON"
                aWinner = true;
            }
            if(slotThreeButton.currentTitle == "O" &&
                slotFiveButton.currentTitle == "O" &&
                slotSevenButton.currentTitle == "O"){
                playerLabel.text = "PLAYER TWO HAS WON"
                aWinner = true;
            }
            
            if(aWinner){
                slotOneButton.isEnabled = false;
                slotTwoButton.isEnabled = false;
                slotThreeButton.isEnabled = false;
                slotFourButton.isEnabled = false;
                slotFiveButton.isEnabled = false;
                slotSixButton.isEnabled = false;
                slotSevenButton.isEnabled = false;
                slotEightButton.isEnabled = false;
                slotNineButton.isEnabled = false;
            }

        }


    }
    
    @IBAction func resetGame(_sender: UIButton){
        aWinner = false;
        slotOneButton.setTitle("", for: UIControl.State.normal)
        slotTwoButton.setTitle("", for: UIControl.State.normal)
        slotThreeButton.setTitle("", for: UIControl.State.normal)
        slotFourButton.setTitle("", for: UIControl.State.normal)
        slotFiveButton.setTitle("", for: UIControl.State.normal)
        slotSixButton.setTitle("", for: UIControl.State.normal)
        slotSevenButton.setTitle("", for: UIControl.State.normal)
        slotEightButton.setTitle("", for: UIControl.State.normal)
        slotNineButton.setTitle("", for: UIControl.State.normal)
        isPlayerOne = true;
        
            slotOneButton.isEnabled = true;
            slotTwoButton.isEnabled = true;
            slotThreeButton.isEnabled = true;
            slotFourButton.isEnabled = true;
            slotFiveButton.isEnabled = true;
            slotSixButton.isEnabled = true;
            slotSevenButton.isEnabled = true;
            slotEightButton.isEnabled = true;
            slotNineButton.isEnabled = true;
        
        updateLabel();

        
    }
    
    @IBAction func markSlotOne(_sender: UIButton){
        if(slotOneButton.currentTitle == "X"){
            
        }
        else if(slotOneButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotOneButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotOneButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotTwo(_sender: UIButton){
        if(slotTwoButton.currentTitle == "X"){
            
        }
        else if(slotTwoButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotTwoButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotTwoButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotThree(_sender: UIButton){
        if(slotThreeButton.currentTitle == "X"){
            
        }
        else if(slotThreeButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotThreeButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotThreeButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotFour(_sender: UIButton){
        if(slotFourButton.currentTitle == "X"){
            
        }
        else if(slotFourButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotFourButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotFourButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotFive(_sender: UIButton){
        if(slotFiveButton.currentTitle == "X"){
            
        }
        else if(slotFiveButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotFiveButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotFiveButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotSix(_sender: UIButton){
        if(slotSixButton.currentTitle == "X"){
            
        }
        else if(slotSixButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotSixButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotSixButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotSeven(_sender: UIButton){
        if(slotSevenButton.currentTitle == "X"){
            
        }
        else if(slotSevenButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotSevenButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotSevenButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotEight(_sender: UIButton){
        if(slotEightButton.currentTitle == "X"){
            
        }
        else if(slotEightButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotEightButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotEightButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    @IBAction func markSlotNine(_sender: UIButton){
        if(slotNineButton.currentTitle == "X"){
            
        }
        else if(slotNineButton.currentTitle == "O"){
            
        }
        else if(isPlayerOne){
            isPlayerOne = false;
            slotNineButton.setTitle("X", for: UIControl.State.normal)
        }
        else{
            isPlayerOne = true;
            slotNineButton.setTitle("O", for: UIControl.State.normal)
        }
        updateLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

