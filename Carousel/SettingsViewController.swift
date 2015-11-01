//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Haihong Wang on 10/31/15.
//  Copyright © 2015 Haihong Wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.delegate = self
        settingsScrollView.contentSize = CGSize(width: settingsImage.image!.size.width, height: settingsImage.image!.size.height + 52)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressClose(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
