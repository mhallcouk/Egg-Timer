//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mathew Hall on 24/12/2016.
//  Copyright © 2016 Mathew Hall. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
        
        time -= 1
        
        timerLabel.text = String(time)
        } else {
            timer.invalidate()
            for _ in 1...5 {
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                sleep(1)
            }
        }
    
    }
    
    
    @IBOutlet var timerLabel: UILabel!
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
        time -= 10
        timerLabel.text = String(time)
        }
    }
    @IBAction func reset(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

