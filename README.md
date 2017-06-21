# Simplifier

[![CI Status](http://img.shields.io/travis/alexshubin22@gmail.com/Simplifier.svg?style=flat)](https://travis-ci.org/alexshubin22@gmail.com/Simplifier)
[![Version](https://img.shields.io/cocoapods/v/Simplifier.svg?style=flat)](http://cocoapods.org/pods/Simplifier)
[![License](https://img.shields.io/cocoapods/l/Simplifier.svg?style=flat)](http://cocoapods.org/pods/Simplifier)
[![Platform](https://img.shields.io/cocoapods/p/Simplifier.svg?style=flat)](http://cocoapods.org/pods/Simplifier)

`Simplifier` is the pack of popular extensions

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Simplifier is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Simplifier"
```

## Usage

#### Dictionary

Compose dictionaries
```swift
var dict = ["one":1]
dict += ["two":2] + ["three":3] //["two": 2, "one": 1, "three": 3]
```

#### UIView

Make view border with round corners
```swift
myView.makeRoundBorder(ofColor: .black, width: 1, radius: 3)
```

Add constraints to view
```swift
myView.addConstaintsToSuperview(leftOffset: 0, topOffset: 0)
myView.addConstaints(height: 64, width: 64)
```

Take a screenshot of your view
```swift
let screenshot:UIImage = myView.snapshotImage
```

#### UIViewController

Take content view controller of your navigation controller if needed
```swift
let contentVC = destinationVC.contentViewController
```

#### Data

Build data in current Calendar with single method and take date components
```swift
let dt = Date.from(year: 2017, month: 6, day: 25, hour: 12)
dt.month // 6
dt.year // 2017
```

#### Collection

Safe collection subscript - returns optional
```swift
let optionalElement = array[safe: 15]
```

#### UIImage

Make UIImage of color with rounded corners
```swift
let image = UIImage.ofColor(.red, size: size, cornerRadius: 5)
```

Create gradient image 
```swift
let gradient = Gradient(direction:.leftRight, size:CGSize(width:50, height:10), startColor:.red, endColor:.yellow)
let gradientImage = UIImage.gradientImage(gradient)
```

Gaussian blur for UIImage with radius:
```swift
let imageWithBlur = myImage.blurImage(radius: 8)
```

Get pixel color for image
```swift
let color = myImage.pixelColor(for: CGPoint(x:10, y:10))
```

Transform image to single color template
```swift
let maskedImage = myImage.maskWithColor(color: .blue)
```

Crop image to sqare
```swift
let cropped = myImage.squareCroppedImage()
```

Scale image to size
```swift
let resized = myImage.scaledTo(size:mySize)
```

#### String

Get right endings for russian countable nouns 
```swift
for i in 1...7 {
    print(String(i)+" "+String.russianWordFor(number: i, one: "яйцо", two: "яйца", five: "яиц"))
}
```
Output:
```
1 яйцо
2 яйца
3 яйца
4 яйца
5 яиц
6 яиц
7 яиц
```

Generate an image from string
```swift
let myImage = "STR".generateImage(of: CGSize(width:50,height:50), font: UIFont.systemFont(ofSize: 10), color: .red)
```

#### NSAttributedString

Easily create NSAttributedString
```swift
let attrStr = NSAttributedString(string: "STR", font: font.withSize(10), color: .red)
```

## Author

Alex Shubin, Interactive Services, alexshubin22@gmail.com, alexshubin22@gmail.com

## License

Simplifier is available under the MIT license. See the LICENSE file for more info.
