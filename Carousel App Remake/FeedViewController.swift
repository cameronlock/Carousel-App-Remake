//
//  FeedViewController.swift
//  Carousel App Remake
//
//  Created by Cameron Lock on 9/28/15.
//  Copyright (c) 2015 Cameron Lock. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var scrollView2: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView2.contentSize = CGSize(width: 320, height: 1000)

        
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
