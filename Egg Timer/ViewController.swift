//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mathew Hall on 24/12/2016.
//  Copyright © 2016 Mathew Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    func processTimer() {
        
        print("A second has passed")
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var timer = Timer()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("processTimer"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

