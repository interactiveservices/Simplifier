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
        
        var dict = ["one":1]
        dict += ["two":2] + ["three":3]
        print(dict)
        
        
        view.backgroundColor = .gray
        
        let img1 = "РШ".generateImage(of: CGSize(width:50,height:50), font: UIFont.systemFont(ofSize: 10), color: .red)
        
        let v1 = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        v1.image = img1
        view.addSubview(v1)
        
        let img = #imageLiteral(resourceName: "img1")
        
        for i in 1...5 {
            for j in 1...5 {
                let v = UIImageView(frame: CGRect(x: i*80, y: j*80, width: 50, height: 50))
                v.image = img.maskWithColor(color: .blue)
                view.addSubview(v)
        }
        }
        
        for i in 1...7 {
            print(String(i)+" "+String.russianWordFor(number: i, one: "яйцо", two: "яйца", five: "яиц"))
        }
        
    }
    
}

