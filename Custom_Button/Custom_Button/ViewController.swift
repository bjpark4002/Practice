//
//  ViewController.swift
//  Custom_Button
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLoading = false
    
    @IBOutlet weak var myButton: LoadingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myButton.layer.borderColor = UIColor.black.cgColor
        myButton.layer.borderWidth = 1
        
        myButton.setTitleColor(UIColor.red, for: .normal)
    }

    @IBAction func doAction(_ sender: Any) {
        isLoading = !isLoading
       // = isLoading.toggle()
        if isLoading{
            myButton.startLoading()
        }
        else{
            myButton.stopLoading()
        }
    }
    
}

