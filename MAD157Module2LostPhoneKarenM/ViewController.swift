//
//  ViewController.swift
//  MAD157Module2LostPhoneKarenM
//
//  Created by Karen Mathes on 8/25/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//

//.. Works specifically with iPhone 11

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonObject: UIButton!
    @IBOutlet var displayText: UITextView!
    @IBOutlet var thankYouImage: UIImageView!
    @IBOutlet var instructionLabel: UILabel!
    @IBOutlet var myView: UIView!
    
    var displayOwnerText = "Owner: Karen Mathes \nEmail: kmathes348@students.mchenry.edu \nAlt.Phone Contact: 999-999-9999 \nContact code: \"Hexadecimal\" \nReward for safe return: $25"
    
    var thankYouMsg = "thankYou.png"
    var youAreAwesomeMsg = "You are awesome!!!"
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //.. the following is Xcode Markup and can be found on https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/
    
    /**
    Function executed to display "contact info" msg when user presses the button on the screen
    - parameters: none
    - returns: nothing
    */
    
    @IBAction func touchUpInside(_ sender: UIButton) {
    
        buttonObject.setTitle("Please Contact", for: UIControl.State.normal)
        buttonObject.backgroundColor = UIColor.purple
        buttonObject.setTitleColor(UIColor.white, for: UIControl.State.normal)
        
        displayText.text = self.displayOwnerText
        instructionLabel.text = self.youAreAwesomeMsg
        instructionLabel.textColor = UIColor.magenta
        instructionLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        thankYouImage.image = UIImage(named: thankYouMsg)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "confetti.png")!)
    
         print("****** this is what you have in the text box when button is clicked: \(displayOwnerText)")
            
        }
        
    }
    
