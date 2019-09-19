//
//  ViewController.swift
//  Alert_Controller
//
//  Created by Bumjin Park on 9/19/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func displayAlert(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "chose one", preferredStyle: .actionSheet)
        let delete = UIAlertAction(title: "Delete", style: .default, handler: nil)
        let save = UIAlertAction(title: "Save", style: .default) { (action) in
            // when save button is pressed.
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(delete)
        alert.addAction(save)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

