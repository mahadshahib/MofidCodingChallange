//
//  UIView+Extensions.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit
extension UIView {
    //pin view to its superview with constants
func pin(to superView: UIView, top : CGFloat = 0, bottom : CGFloat = 0, left : CGFloat = 0, right : CGFloat = 0){
    translatesAutoresizingMaskIntoConstraints = false
    topAnchor.constraint(equalTo: superView.topAnchor , constant: top).isActive = true
    leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: left).isActive = true
    bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -bottom).isActive = true
    trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -right).isActive = true
}
    
    
   
    
}
