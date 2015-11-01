//
//  TimelineViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/31/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        feedScrollView.delegate = self
       feedScrollView.contentSize = CGSize(width: feedImage.image!.size.width, height: feedImage.image!.size.height + 49)

        // Do any additional setup after loading the view.
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
