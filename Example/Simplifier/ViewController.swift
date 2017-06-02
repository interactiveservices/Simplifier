//
//  ViewController.swift
//  Simplifier
//
//  Created by alexshubin22@gmail.com on 06/01/2017.
//  Copyright (c) 2017 alexshubin22@gmail.com. All rights reserved.
//

import UIKit
import Simplifier

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        for i in 1...10 {
            for j in 1...10 {
                let v = UIImageView(frame: CGRect(x: i*80, y: j*80, width: 50, height: 50))
                v.image = UIImage.ofColor(.green, size: v.bounds.size, cornerRadius: 5)
                view.addSubview(v)
            }
        }
        
    }
   
}

