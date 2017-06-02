//
//  DictionarySimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import UIKit

extension UIView {
    
    public func makeRoundBorder(ofColor color: UIColor, width: CGFloat = 1, radius: CGFloat = 3) {
        
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.cornerRadius = radius
        clipsToBounds = true
    }
    
    public func addConstaintsToSuperview(leftOffset: CGFloat, topOffset: CGFloat) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.superview?.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .leading,
                                                         relatedBy: .equal,
                                                         toItem: self.superview,
                                                         attribute: .leading,
                                                         multiplier: 1,
                                                         constant: leftOffset))
        
        self.superview?.addConstraint(NSLayoutConstraint(item: self,
                                                         attribute: .top,
                                                         relatedBy: .equal,
                                                         toItem: self.superview,
                                                         attribute: .top,
                                                         multiplier: 1,
                                                         constant: topOffset))
    }
    
    public func addConstaints(height: CGFloat, width: CGFloat) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addConstraint(NSLayoutConstraint(item: self,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: nil,
                                              attribute: .notAnAttribute,
                                              multiplier: 1,
                                              constant: height))
        
        
        self.addConstraint(NSLayoutConstraint(item: self,
                                              attribute: .width,
                                              relatedBy: .equal,
                                              toItem: nil,
                                              attribute: .notAnAttribute,
                                              multiplier: 1,
                                              constant: width))
    }
    
    public var snapshotImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
