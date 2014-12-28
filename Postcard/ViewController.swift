//
//  ViewController.swift
//  Postcard
//
//  Created by h605506 on 12/25/14.
//  Copyright (c) 2014 Josher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessage: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
   
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //commment here
        
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.greenColor()
        
            
        enterMessage.text = ""
        enterNameTextField.text = ""
        enterMessage.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Highlighted)
        
        
    }

    
    
}

