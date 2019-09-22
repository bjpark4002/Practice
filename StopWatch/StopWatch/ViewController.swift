//
//  ViewController.swift
//  StopWatch
//
//  Created by Bumjin Park on 9/20/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var mm: UILabel!
    
    @IBOutlet weak var ss: UILabel!
    
    @IBOutlet weak var SS: UILabel!
    
    
    var isRunning = false
    
    var time = Timer()
    
    var startTime = 0.0
    var elapsed = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startStopButton.setTitle("Start", for: .normal)
        resetButton.setTitle("Reset", for: .normal)
        resetLabel()
        

    }
    
    @objc func updateCounter(){
 
        elapsed = Date().timeIntervalSince1970 - startTime

        let date = Date(timeIntervalSince1970: elapsed)
        let dateFormat = DateFormatter()
        
        dateFormat.dateFormat = "mm"
        mm.text = dateFormat.string(from: date)
        
        dateFormat.dateFormat = "ss"
        ss.text = dateFormat.string(from: date)
        
        dateFormat.dateFormat = "SS"
        SS.text = dateFormat.string(from: date)
        
    }

    @IBAction func StartStopButton(_ sender: Any) {
        
        if isRunning{
            //isRunning = !isRunning
  //          elapsed = Date().timeIntervalSince1970 - startTime
            
            startStopButton.setTitle("Start", for: .normal)
            time.invalidate()
            
        }else{
            //isRunning = !isRunning
            startTime = Date().timeIntervalSince1970 - elapsed
            time = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
            startStopButton.setTitle("Stop", for: .normal)
            
        }

        
        
        isRunning = !isRunning
        
        //print("start time : \(startTime)\nElapsed time : \(elapsed)")
        
//        let date = Date(timeIntervalSince1970: elapsed)
//        let dateFormat = DateFormatter()
//
//        dateFormat.dateFormat = "mm"
//        mm.text = dateFormat.string(from: date)
//
//        dateFormat.dateFormat = "ss"
//        ss.text = dateFormat.string(from: date)
//
//        dateFormat.dateFormat = "SS"
//        SS.text = dateFormat.string(from: date)
        
        //print("dateFormat = \(dateFormat)")
    }
    
    
    @IBAction func ResetButton(_ sender: Any) {
        if !isRunning{
            resetLabel()
            elapsed = 0.0
            
        }

    }
    
    func resetLabel(){
        mm.text = "00"
        ss.text = "00"
        SS.text = "00"
    }
}

