//
//  SignInViewController.swift
//  Carousel App Remake
//
//  Created by Cameron Lock on 9/26/15.
//  Copyright (c) 2015 Cameron Lock. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signInView: UIView!
    var initialY: CGFloat!
    let offset: CGFloat = -150
    func keyboardWillShowMeTheKeyboard(notification: NSNotification!) {
        signInView.frame.origin.y = initialY + offset
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        signInView.frame.origin.y = initialY
    }
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    

    @IBAction func tapSignInButton(sender: AnyObject) {
        delay(0, { () -> () in
            
            if(self.emailTextField.text == "emailaddress" && self.passwordTextField.text == "password") {
                self.performSegueWithIdentifier("signInSegue", sender: self)
            }
                
            else {
                let errorAlert = UIAlertController(title: "Sorry", message: "Username and/or Password is not correct", preferredStyle: UIAlertControllerStyle.Alert)
                
                errorAlert.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,
                    handler: nil))
                
                
                self.presentViewController(errorAlert, animated: true, completion: nil)
                
            }
            
        })

        
    }
    
    
    func textFieldDidChange() {
        if(emailTextField.text != "" && passwordTextField.text != "") {
            signInButton.enabled = true
        }
        else {
            signInButton.enabled = false
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialY = signInView.frame.origin.y
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShowMeTheKeyboard:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
