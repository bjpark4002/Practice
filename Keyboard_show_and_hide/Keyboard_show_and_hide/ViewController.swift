//
//  ViewController.swift
//  Keyboard_show_and_hide
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController{
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.becomeFirstResponder()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        myTextField.becomeFirstResponder()
//
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        super.viewWillAppear(animated)
//        myTextField.becomeFirstResponder()
//
//    }
    
    @IBAction func hideKeyBoard(_ sender: Any) {
        myTextField.resignFirstResponder()
        //myTextField.endEditing(true)
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

