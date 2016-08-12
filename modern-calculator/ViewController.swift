//
//  ViewController.swift
//  modern-calculator
//
//  Created by Maurice Ben-Oduro on 7/28/16.
//  Copyright © 2016 iocreate. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equal = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var calculationLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!

    var buttonSound: AVAudioPlayer!
    var runningNumber = ""
    var rightValueNumber = ""
    var leftValueNumber = ""
    var currentOperation = Operation.Empty
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("button", ofType: "wav")
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        // Error Handling
        do{
          try buttonSound = AVAudioPlayer(contentsOfURL: soundUrl)
            buttonSound.prepareToPlay()
        } catch let err as NSError{
            print(err.debugDescription)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPressed(btn: UIButton!){
        
        buttonSound.play()
        
        runningNumber += "\(btn.tag)"
        calculationLabel.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func onSubstractPressed(sender: AnyObject) {
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
    }

    @IBAction func onEqualPressed(sender: AnyObject) {
    }
    
    @IBAction func onClearPressed(sender: AnyObject){
        
        buttonSound.play()
        
        calculationLabel.text = "0"
    }

}

