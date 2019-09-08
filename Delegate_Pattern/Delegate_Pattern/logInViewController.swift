//
//  logInViewController.swift
//  Delegate_Pattern
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit


protocol LoginInfo {
    func load(id: String)
}



class logInViewController: UIViewController {
    var delegate: LoginInfo?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textLabelAction(_ sender: UITextField) {
        delegate?.load(id: sender.text ?? "")
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
