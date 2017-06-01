//
//  UIImageSimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import Foundation

extension UIImage {
    
    public func blurImage(radius: CGFloat) -> UIImage {
        
        let inputImage = CIImage(image: self)!
        
        let parameters: [String:Any] = [
            kCIInputRadiusKey: radius,
            kCIInputImageKey: inputImage
        ]
    
        let filter = CIFilter(name: "CIGaussianBlur",
                              withInputParameters: parameters)!
        
        let cgimg = CIContext().createCGImage(filter.outputImage!, from: inputImage.extent)
        return UIImage(cgImage: cgimg!)
    }
    
}
