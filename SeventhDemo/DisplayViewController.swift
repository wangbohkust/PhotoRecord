//
//  DisplayViewController.swift
//  SeventhDemo
//
//  Created by wangbo on 1/15/15.
//  Copyright (c) 2015 wangbo. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var currPhoto : Photo?
    
    @IBOutlet weak var currImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: currPhoto!.filename)
        currImage.image = image
        self.title = currPhoto?.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var thirdScene = segue.destinationViewController as InfoViewController
        thirdScene.currPhoto = currPhoto
    }
    

}
