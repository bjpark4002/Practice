//
//  ViewController.swift
//  DatePicker
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let currentDate = Date()
        
        var dateComponent = DateComponents()
        
        dateComponent.day = 2
        dateComponent.hour = 1
        
        let maxDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
   
        datePicker.maximumDate = maxDate
        datePicker.minimumDate = currentDate
    
    
    }


    @IBAction func touchDatePicker(_ sender: UIDatePicker) {
    }
}

