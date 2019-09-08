//
//  ViewController.swift
//  Delegate_Pattern
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginInfo {
    func load(id: String) {
        // write code
        userId.text = id
    }
    
    @IBOutlet weak var userId: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToLoginVC"{
            let loginVC = segue.destination as! logInViewController
            loginVC.delegate = self
        }
    }

}

