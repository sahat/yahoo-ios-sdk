//
//  ViewController.swift
//  yahoo-ios-sdk
//
//  Created by Sahat Yalkabov on 11/13/14.
//  Copyright (c) 2014 Sahat Yalkabov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
        self.simpleLabel.text = "Hello, \(textfield.text)!"
        self.textfield.resignFirstResponder()
        
        let alert = UIAlertController(title: "Signed in as Sahat Yalkabov", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        alert.addAction(UIAlertAction(title: "Sign out", style: UIAlertActionStyle.Destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.simpleLabel.text = "Hello, \(textfield.text)!"
        self.textfield.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

