//
//  DictionarySimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import UIKit

extension UIView {
    
    public func makeRoundCorners(borderColor: UIColor, width: CGFloat = 1, radius: CGFloat = 3) {
        
        layer.borderWidth = width
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = radius
        clipsToBounds = true
    }
    
    public var snapshotImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
