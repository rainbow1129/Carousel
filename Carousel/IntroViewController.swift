//
//  IntroViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/28/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    //var i = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        introScrollView.contentSize = introImageView.image!.size
        introScrollView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //introTile1.transform = CGAffineTransformMakeRotation(CGFloat(i++ * M_PI / 180))
        print(scrollView.contentOffset.y)
        
        introTile1.transform = CGAffineTransformMakeTranslation(
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 77),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 288)
        )
        
        introTile1.transform = CGAffineTransformRotate(introTile1.transform,CGFloat(Double(convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: -10, r2Max: 0))*M_PI/180)
        )
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
