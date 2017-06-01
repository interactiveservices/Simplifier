//
//  DictionarySimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import UIKit

extension UIViewController {
    
    public var contentViewController: UIViewController {
        if let navCon = self as? UINavigationController {
            return navCon.visibleViewController ?? navCon
        } else {
            return self
        }
    }
    
}
