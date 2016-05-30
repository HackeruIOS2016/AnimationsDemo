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
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        resetAnimation()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        animateLogin()
        
    }
    
    func animateLogin(){
        UIView.animateWithDuration(0.5, delay: 0, options: [.CurveEaseInOut], animations: { () -> Void in
                 self.userCenterX.constant = 0
                 self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, options: [.CurveEaseInOut], animations: { () -> Void in
              self.passwordCenterX.constant = 0
              self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.9, options: [.CurveEaseInOut], animations: { () -> Void in
                self.loginCenterX.constant = 60
                self.view.layoutIfNeeded()
            }, completion: nil)
        
        
    }
    
    func resetAnimation(){
         userCenterX.constant = -300
         passwordCenterX.constant = -300
         loginCenterX.constant = -300
         self.view.layoutIfNeeded()
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