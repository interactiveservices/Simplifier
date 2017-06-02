//
//  AttributedStringSimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 02.06.17.
//
//

import Foundation

extension NSAttributedString {
    
    public convenience init(string:String, font:UIFont, color:UIColor) {
        self.init(string: string, attributes: [NSFontAttributeName : font,
                                               NSForegroundColorAttributeName : color])
    }
    
}
