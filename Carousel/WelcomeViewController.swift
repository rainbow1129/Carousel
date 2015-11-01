//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/31/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var backupSwitch: UISwitch!
    @IBOutlet weak var CarouselButton: UIImageView!
    
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
        CarouselButton.alpha = 0
        backupSwitch.alpha = 0
        welcomeScrollView.delegate = self
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var page: Int = Int(round(scrollView.contentOffset.x / 320))
        welcomePageControl.currentPage = page
        if (page == 3) {
            welcomePageControl.hidden = true
            UIView.animateWithDuration(0.1) { () -> Void in
                self.CarouselButton.alpha = 1
                self.backupSwitch.alpha = 1
            }
        } else {
            self.welcomePageControl.hidden = false
            self.CarouselButton.alpha = 0
            self.backupSwitch.alpha = 0
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
