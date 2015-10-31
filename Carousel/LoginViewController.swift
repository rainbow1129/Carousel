//
//  LoginViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/28/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController, UIScrollViewDelegate {
   

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signinNavigationBar: UIImageView!
    @IBOutlet weak var loginTextView: UIImageView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var signinScrollView: UIScrollView!
    var initialY: CGFloat!
    let offset: CGFloat = -135
   
    override func viewDidLoad() {
        super.viewDidLoad()
        signinScrollView.contentSize = CGSize(width: 320, height: 600)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        initialY = buttonParentView.frame.origin.y
        
        signinScrollView.delegate = self
        
        
        

        // Do any additional setup after loading the view.
    }


    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.5, 0.5)
        signinNavigationBar.transform = transform
        fieldParentView.transform = transform
        loginTextView.transform = transform
        signinNavigationBar.alpha = 0
        fieldParentView.alpha = 0
        loginTextView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.1) { () -> Void in
        
        self.signinNavigationBar.transform = CGAffineTransformIdentity
        self.fieldParentView.transform = CGAffineTransformIdentity
        self.loginTextView.transform = CGAffineTransformIdentity
        self.signinNavigationBar.alpha = 1
        self.fieldParentView.alpha = 1
        self.loginTextView.alpha = 1
            }
    }
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signinBackButton(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        let maxContentOffsetY = signinScrollView.contentSize.height - signinScrollView.frame.size.height
        
        signinScrollView.contentOffset.y = maxContentOffsetY
        
        //self.buttonParentView.frame.origin = CGPoint(x: self.buttonParentView.frame.origin.x, y: self.initialY + self.offset)
        buttonParentView.transform = CGAffineTransformMakeTranslation(0, offset)
        signinScrollView.scrollEnabled = true
        
       
    }
    
    
    @IBAction func editingChanged(sender: AnyObject) {
        // Un-comment these if we want to enable sign in button only when both field is not
        // empty.
        /*
        if (emailField.text!.isEmpty || passwordField.text!.isEmpty) {
            signInButton.enabled = false
        } else {
            signInButton.enabled = true
        }
        */
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        
        //buttonParentView.transform = CGAffineTransformMakeTranslation(self.buttonParentView.frame.origin.x, self.buttonParentView.frame.origin.y)
        buttonParentView.transform = CGAffineTransformIdentity
        signinScrollView.contentOffset.y = 0
        signinScrollView.scrollEnabled = false
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if (signinScrollView.contentOffset.y < 90) {
            view.endEditing(true)
            
        }
        
    }
  

    @IBAction func signinButton(sender: AnyObject) {
        
        if (emailField.text!.isEmpty || passwordField.text!.isEmpty){
        let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
            }
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
        }else{
            self.activityIndicator.startAnimating()
            delay(2) {
                if self.emailField.text == "haihong@fb.com" && self.passwordField.text == "0000" {
                    self.activityIndicator.stopAnimating()
                    self.performSegueWithIdentifier("signinSegue", sender: nil)
                    
                }else{
                
                    let alertController = UIAlertController(title: "Invalid Email or Password", message: "Please enter valid Email and Password", preferredStyle: .Alert)
                    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) {(action) in
                    }
                    alertController.addAction(cancelAction)
                    self.presentViewController(alertController, animated: true){
                        self.activityIndicator.stopAnimating()
                    }
                }
            }
        }
        
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
