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
            number = number % 10;
        }
        
        switch number {
        case 1: return one
        case 2...4: return two
        default: return five
        }
    }
    
}
