//
//  File.swift
//  Pods
//
//  Created by Alex Shubin on 02.06.17.
//
//

import Foundation

extension String {
    
    public static func russianWordFor(number: Int, one: String, two: String, five: String) -> String {
        
        var number = number % 100
        
        if number > 19 {
            number = number % 10
        }
        
        switch number {
        case 1: return one
        case 2...4: return two
        default: return five
        }
    }
    
    public func generateImage(of size:CGSize, font: UIFont, color: UIColor) -> UIImage {
        
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        
        let str = NSMutableAttributedString(attributedString:
            NSAttributedString(string: self, font: font.withSize(size.height/3), color: color)
        )
    
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        str.addAttribute(NSParagraphStyleAttributeName,
                         value: paragraphStyle,
                         range: NSMakeRange(0, self.characters.count))
        
        let rect = CGRect(origin: CGPoint(x: 0,
                                          y: (size.height - str.size().height) / 2),
                          size: size)
    
        str.draw(in: rect)
        
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resultImage
    }
    
}


