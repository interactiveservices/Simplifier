//
//  ArraySimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import Foundation

extension Array {
    
    public subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
}
