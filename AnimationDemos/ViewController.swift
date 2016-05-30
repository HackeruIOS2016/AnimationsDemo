//
//  ViewController.swift
//  AnimationDemos
//
//  Created by HackerU on 30/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tapped(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, delay: 0, options: [.CurveEaseInOut], animations: { () -> Void in
                sender.center.x = sender.center.x + 100
                sender.center.y = sender.center.y + 100
            }, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var colors = [UIColor.orangeColor(),UIColor.whiteColor(), UIColor.blueColor(), UIColor.purpleColor()]
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        UIView.animateWithDuration(1){
//            self.view.backgroundColor = self.colors[Int.nextRandom(self.colors.count)]
//        }
//        
        
     
        UIView.animateWithDuration(1, delay: 0, options: [.Repeat, .Autoreverse, .CurveEaseInOut], animations: { () -> Void in
                self.view.backgroundColor = UIColor.orangeColor()
            }, completion: nil)
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