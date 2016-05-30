//
//  TransitionsViewController.swift
//  AnimationDemos
//
//  Created by HackerU on 30/05/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class TransitionsViewController: UIViewController {
    
    @IBOutlet weak var coinContainer: UIView!
    
    @IBOutlet weak var coinBack: UIImageView!
    @IBOutlet weak var coinHead: UIImageView!
    @IBOutlet weak var bannerView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func animateCoin(){
        UIView.transitionWithView(coinContainer, duration: 0.5, options: [.TransitionFlipFromLeft ,.CurveLinear, .Repeat], animations: { () -> Void in
                self.coinBack.hidden = !self.coinBack.hidden
                self.coinHead.hidden = !self.coinHead.hidden
            }, completion: nil)
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        animateCoin()
        
        UIView.transitionWithView(bannerView, duration: 1.5, options: .TransitionCurlDown, animations: { () -> Void in
                self.bannerView.alpha = 1
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
