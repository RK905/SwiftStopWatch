//
//  ViewController.swift
//  SwiftStopWatch
//
//  Created by Rayen Kamta on 8/26/15.
//  Copyright (c) 2015 Geeksdobyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimerLabel: UILabel!
    
    var timer = NSTimer()
    var count = 0
    func updateTime(){
        count++
        TimerLabel.text = "\(count)"
        
    }
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func stopBtn() {
       timer.invalidate()
    }
    
    
    
    @IBAction func startBtn() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self , selector : Selector("updateTime"), userInfo: nil, repeats : true)
    }
    
    
    @IBAction func resetBtn() {
        timer.invalidate()
        count = 0
        TimerLabel.text = "0"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

