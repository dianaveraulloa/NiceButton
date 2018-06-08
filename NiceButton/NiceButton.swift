//
//  NiceButton.swift
//  NiceButton
//
//  Created by Aceleradora Mobile Perú on 8/06/18.
//  Copyright © 2018 Aceleradora Mobile Perú. All rights reserved.
//

import UIKit

class NiceButton: UIButton {

    override func draw(_ rect: CGRect) {
        self.backgroundColor = .clear
        self.layer.cornerRadius = 6
        self.layer.borderWidth = 1
        self.contentEdgeInsets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
//        self.setTitleColor( UIColor(red:0.67, green:0.76, blue:0.26, alpha:1.0), for: UIControlState.normal)
//        self.setTitleColor(UIColor.green, for: .focused)
//        self.setTitleColor(UIColor.gray, for: .disabled)
        
        switch self.state {
        case .normal:
            self.layer.borderColor = UIColor(red:0.67, green:0.76, blue:0.26, alpha:1.0).cgColor
            self.setTitleColor( UIColor(red:0.67, green:0.76, blue:0.26, alpha:1.0), for: UIControlState.normal)
        case .disabled:
            self.layer.borderColor = UIColor.gray.cgColor
            self.setTitleColor(UIColor.gray, for: .disabled)
        case .focused:
            self.layer.borderColor = UIColor.red.cgColor
            self.setTitleColor(UIColor.red, for: .focused)
        case .selected:
            self.backgroundColor = .clear
            self.layer.borderColor = UIColor.orange.cgColor
            self.setBackgroundImage(UIImage(), for: .selected)
            self.setTitleColor(UIColor.orange, for: .selected)
        case UIControlState.highlighted:
            self.layer.borderColor = UIColor.green.cgColor
            self.setTitleColor(UIColor.green, for: .highlighted)
        default:
            self.layer.borderColor = UIColor.black.cgColor
            self.setTitleColor(UIColor.black, for: .normal)
        }
    }
    
    

}
