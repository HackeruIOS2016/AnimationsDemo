//
//  ViewController.swift
//  AnimationDemos
//
//  Created by HackerU on 30/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cloud1X: NSLayoutConstraint!
    @IBOutlet weak var cloud2x: NSLayoutConstraint!
    @IBOutlet weak var cloud3X: NSLayoutConstraint!
    @IBOutlet weak var cloud4X: NSLayoutConstraint!
    
    
    @IBOutlet weak var userCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var passwordCenterX: NSLayoutConstraint!
    
    
    @IBOutlet weak var loginCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        resetClouds()
        resetAnimation()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        animateLogin()
        animateClouds()
    }
    
    func resetClouds(){
        cloud1X.constant = cloud1X.constant - 200
        cloud2x.constant = cloud2x.constant - 200
        cloud3X.constant = cloud3X.constant - 200
        cloud4X.constant = cloud4X.constant - 200
        view.layoutIfNeeded()
    }
    
    func animateClouds(){
        UIView.animateWithDuration(6.5, delay: 0, options: [.CurveEaseInOut, .Repeat], animations: { () -> Void in
                self.cloud1X.constant = self.cloud1X.constant + 200 + 200 + 200
            
                self.view.layoutIfNeeded()
            }){ _ in
                self.cloud1X.constant = self.cloud1X.constant -  400 - 200
        }
        
        UIView.animateWithDuration(7.5, delay: 0, options: [.CurveEaseInOut, .Repeat, .Autoreverse], animations: { () -> Void in
            self.cloud2x.constant = self.cloud2x.constant + 200 + 200
            
            self.view.layoutIfNeeded()
            }){ _ in
        }
        
        UIView.animateWithDuration(6.0, delay: 0, options: [.CurveEaseInOut, .Repeat, .Autoreverse], animations: { () -> Void in
            self.cloud3X.constant = self.cloud3X.constant + 200 + 200
            
            self.view.layoutIfNeeded()
            }){ _ in
        }
        
        UIView.animateWithDuration(8.0, delay: 0, options: [.CurveEaseInOut, .Repeat, .Autoreverse], animations: { () -> Void in
            self.cloud4X.constant = self.cloud4X.constant + 200 + 200
            
            self.view.layoutIfNeeded()
            }){ _ in
        }
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