//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mathew Hall on 24/12/2016.
//  Copyright © 2016 Mathew Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    func processTimer() {
        
        print("A second has passed")
    
    }
    
    @IBAction func startStop(_ sender: Any) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

