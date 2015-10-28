//
//  IntroViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/28/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
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
        
        introTile4.transform = CGAffineTransformMakeTranslation(
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: -70),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 404)
        )
        
        introTile4.transform = CGAffineTransformScale(introTile4.transform, convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.6, r2Max: 1),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.6, r2Max: 1)
        )
        
        introTile4.transform = CGAffineTransformRotate(introTile4.transform,CGFloat(Double(convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 5, r2Max: 0))*M_PI/180)
        )

        
        
        introTile3.transform = CGAffineTransformMakeTranslation(
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 0),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 398)
        )
        
        introTile3.transform = CGAffineTransformScale(introTile3.transform, convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.6, r2Max: 1),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.6, r2Max: 1)
        )
        
        introTile3.transform = CGAffineTransformRotate(introTile3.transform,CGFloat(Double(convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 15, r2Max: 0))*M_PI/180)
        )

        
        
        
        introTile2.transform = CGAffineTransformMakeTranslation(
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: -43),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 0, r2Max: 255)
        )
        
        introTile2.transform = CGAffineTransformScale(introTile2.transform, convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.5, r2Max: 1),
            convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: 1.5, r2Max: 1)
        )
        
        introTile2.transform = CGAffineTransformRotate(introTile2.transform,CGFloat(Double(convertValue(scrollView.contentOffset.y, r1Min: -20, r1Max: 568, r2Min: -15, r2Max: 0))*M_PI/180)
        )
        
        
        
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
