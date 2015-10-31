//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/31/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var welcomeFirstImage: UIImageView!
    @IBOutlet weak var welcomePageControl: UIPageControl!
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    override func viewWillAppear(animated: Bool) {
        welcomeFirstImage.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
         UIView.animateWithDuration(0.5) { () -> Void in
        self.welcomeFirstImage.alpha = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.delegate = self
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        welcomePageControl.currentPage = page
        
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
