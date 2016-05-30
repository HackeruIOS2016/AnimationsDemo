//
//  ViewController.swift
//  AnimationDemos
//
//  Created by HackerU on 30/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var passwordCenterX: NSLayoutConstraint!
    
    
    @IBOutlet weak var loginCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        resetAnimation()
        animateLogin()
        
    }
    
    func animateLogin(){
        UIView.animateWithDuration(0.5, delay: 0, options: [.CurveEaseInOut], animations: { () -> Void in
                self.userName.center.x = self.view.center.x
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, options: [.CurveEaseInOut], animations: { () -> Void in
                self.passwordTextField.center.x = self.view.center.x
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.9, options: [.CurveEaseInOut], animations: { () -> Void in
                self.loginButton.center.x = self.view.center.x + 70
            }, completion: nil)
        
        
    }
    
    func resetAnimation(){
        userName.center.x = -200
        passwordTextField.center.x = -200
        loginButton.center.x = -200
    }
}
 

extension Int{
    static func nextRandom(max:Int)->Int{
        var rand = 0
        arc4random_buf(&rand, sizeof(Int))
        rand = abs(rand)
        rand = rand % max
        return rand
    }
}