//
//  SpringDemoViewController.swift
//  AnimationDemos
//
//  Created by HackerU on 30/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class SpringDemoViewController: UIViewController {
    @IBOutlet weak var containerHeight: NSLayoutConstraint!
    
    
    @IBOutlet weak var containerView: UIView!

    @IBAction func tapped(sender: UIButton) {
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.35, initialSpringVelocity: 1, options: .CurveEaseIn, animations: { () -> Void in
            self.containerHeight.constant += 100
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: .CurveEaseInOut, animations: { () -> Void in
            sender.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
            }, completion: nil)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        animateMain()
    }
    
    
    func animateMain(){
        //The Default value if you didn't make changes.
        //view.transform = CGAffineTransformIdentity
        
        //rotate:
        let rotate = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        
        //scale:
        let scale = CGAffineTransformMakeScale(1, 0.0)
        
        //translate:
        let translate = CGAffineTransformMakeTranslation(0, -100.0)
        
        var c1 = CGAffineTransformConcat(rotate, scale)
        c1 = CGAffineTransformConcat(c1, translate)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
            self.view.transform = c1
            }, completion: nil)
        
        
        UIView.animateWithDuration(0.5, delay:1.0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
            self.view.transform = CGAffineTransformIdentity
            }, completion: nil)
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
