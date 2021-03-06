//
//  ViewController.swift
//  Postcard
//
//  Created by Jeff Pyles on 2/4/15.
//  Copyright (c) 2015 Jeffrey Pyles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var senderName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
     // Adding a Comment here to test committs
     messageLabel.hidden = false
     messageLabel.text = enterMessageTextField.text
     messageLabel.textColor = UIColor.redColor()

     enterMessageTextField.text = ""
     enterMessageTextField.resignFirstResponder()
     
     senderName.hidden = false
     senderName.text = enterNameTextField.text
     
     senderName.textColor = UIColor.blueColor()
     
     enterNameTextField.text = ""
     enterNameTextField.resignFirstResponder()
    
    
    
        
     mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

