//
//  ViewController.swift
//  Angel
//
//  Created by Vineeth Puli on 4/1/17.
//  Copyright © 2017 vineethpuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var springObj: SpringView!
    
    @IBOutlet weak var stickview: SpringImageView!
   
    @IBOutlet weak var leftcloud: SpringImageView!
    
    @IBOutlet weak var rightCloud: SpringImageView!
    
    @IBOutlet weak var springBtn: SpringButton!
  
    @IBAction func segBtn(_ sender: Any) {
        stickview.animation = "fadeOut"
        stickview.duration = 1.5
        stickview.animate()
        self.perform(#selector(ViewController.seguePerformer), with: self, afterDelay: 1.5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        stickview.animation = "squeezeDown"
        stickview.duration = 1.5
        stickview.animate()
    
        leftcloud.animation = "squeezeRight"
        leftcloud.delay = 1.5
        leftcloud.duration = 2.0
        leftcloud.animate()
        
        rightCloud.animation = "squeezeLeft"
        rightCloud.delay = 1.5
        rightCloud.duration = 2.0
        rightCloud.animate()
        
        
        springObj.animation = "fadeIn"
        springObj.delay = 2.0
        springObj.duration = 2.0
        springObj.animate()
        
        springBtn.animation = "fadeIn"
        springBtn.delay = 2.0
        springBtn.duration = 2.0
        springBtn.animate()

    }
    
    func seguePerformer() {
            self.performSegue(withIdentifier: "startDaySegue", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

