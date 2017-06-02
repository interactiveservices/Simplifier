//
//  UIImageSimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

import Foundation

extension UIImage {
    
    public struct Gradient {
        
        public enum GradientDirection {
            case leftRight
            case topBottom
        }
        
        let direction:GradientDirection
        let size:CGSize
        let startColor:UIColor
        let endColor:UIColor
    }
    
    public class func ofColor(_ color:UIColor, size: CGSize = CGSize(width: 4, height: 4), cornerRadius: CGFloat = 0) -> UIImage {
        
        UIGraphicsBeginImageContext(size)
        
        color.setFill()
        UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: size),
                     cornerRadius: cornerRadius).fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
    
    public class func gradientImage(_ gradient:Gradient) -> UIImage {
        UIGraphicsBeginImageContext(gradient.size)
        
        let context = UIGraphicsGetCurrentContext()!
        
        let locations: [CGFloat] = [0.0, 1]
        
        let colors = [gradient.startColor.cgColor,
                      gradient.endColor.cgColor] as CFArray
        
        let colorspace = CGColorSpaceCreateDeviceRGB()
        let gradientToDraw   = CGGradient.init(colorsSpace: colorspace, colors: colors, locations: locations)!
        
        let startPoint = CGPoint()
        var endPoint = CGPoint()
        
        switch gradient.direction {
        case .leftRight:
            endPoint = CGPoint(x:gradient.size.width,y:0)
        case .topBottom:
            endPoint = CGPoint(x:0,y:gradient.size.height)
        }
        
        context.drawLinearGradient(gradientToDraw, start: startPoint, end: endPoint, options: [])
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        
        return image
    }
    
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
