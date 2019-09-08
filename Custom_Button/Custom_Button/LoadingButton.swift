//
//  LoadingButton.swift
//  Custom_Button
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//

import UIKit

class LoadingButton: UIButton {

    
    private let indicator = UIActivityIndicatorView()
    
    private func makeIndicator(){
        self.addSubview(indicator)
        
        //indicator.frame
        DispatchQueue.main.async {
            self.indicator.isHidden = true
        }
        indicator.isUserInteractionEnabled = false
        
        indicator.style = .gray
        indicator.startAnimating()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeIndicator()

        
    }
    public func startLoading(){
        indicator.isHidden = false
        
        let titleColor = self.titleLabel?.textColor
        
        self.setTitleColor(titleColor?.withAlphaComponent(0), for: UIControl.State.normal)
    }
    
    public func stopLoading(){
        indicator.isHidden = true
        let titleColor = self.titleLabel?.textColor
        self.setTitleColor(titleColor?.withAlphaComponent(1), for: UIControl.State.normal)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    

}
