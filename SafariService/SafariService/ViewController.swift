//
//  ViewController.swift
//  SafariService
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit
import SafariServices


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onClick(_ sender: Any) {
        
        let vc = SFSafariViewController(url: URL(string: "https://apple.com")!)
        self.show(vc, sender: self)
    }
}

