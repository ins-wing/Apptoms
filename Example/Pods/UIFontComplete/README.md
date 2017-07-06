# UIFontComplete
[![Build Status](https://travis-ci.org/Nirma/UIFontComplete.svg?branch=master)](https://travis-ci.org/Nirma/UIFontComplete)
![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg)
![Swift 3.1.1](https://img.shields.io/badge/Swift-3.1.1-orange.svg)
![CodeCov](https://img.shields.io/codecov/c/github/Nirma/UIFontComplete.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/UIFontComplete.svg)](#cocoapods)
[![CocoaPods](https://img.shields.io/cocoapods/dt/UIFontComplete.svg)]()
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

Make working with `UIFont` faster and less error-prone

## Usage 
No more wasting time searching for names of `UIFont` fonts and no more surprises at runtime if a font name was mistyped.
This library is simply one extension to `UIFont` and one `Font` `enum` with a case for each system font on iOS. 
Custom font support is also available, please keep reading for details!

Instead of using the `String` based constructor native to `UIFont`:

```swift
let font = UIFont(name: "Arial-BoldItalicMT", size: 12.0)
```

You can now simply start typing the name of the font enum and let code completion help you:

![](http://i.imgur.com/yBYRQVB.gif)

This library currently provides two different options for creating `UIFont` objects.
The first is calling the font name off of the provided `Font` enumeration and then calling `of(size:)`
to provide the desired size.
 
```swif
let myFont = Font.helvetica.of(size: 12.0)
```

The other `UIFont` creation method offered by this library is similar to the normal `UIFont`
constructor except that instead of providing a `String` of the desired font, a case of the `Font` enum is provided instead.
 
```swift
let font = UIFont(font: .arialBoldItalicMT, size: 12.0)
```

### What about Custom Fonts?
Custom Fonts can be added with the help of the `FontRepresentable` protocol.
Simply create your own `CustomFont` `String` based enumeration that adapts the 
`FontRepresentable` and add a case per font that you want to add like so:

```swift
// In your project using custom fonts

enum CustomFont: String, FontRepresentable {
    case alexBrushRegular = "AlexBrush-Regular"
}

CustomFont.alexBrushRegular.of(size: 12.0) // => UIFont
```


## Installation

#### Carthage

If you use Carthage to manage your dependencies, simply add
UIFontComplete to your `Cartfile`:

```
github "Nirma/UIFontComplete"
```

If you use Carthage to build your dependencies, make sure you have added `UIFontComplete.framework` to the "_Linked Frameworks and Libraries_" section of your target, and have included `UIFontComplete.framework` in your Carthage framework copying build phase.

#### CocoaPods

If you use CocoaPods to manage your dependencies, simply add
UIFontComplete to your `Podfile`:

```
pod 'UIFontComplete'
```

## Swift 4 Support
Swift 4 support is currently being tracked by the branch `swift_4` on this repository.

[XCode 9 and Swift 4 support #20](https://github.com/Nirma/UIFontComplete/pull/20)

## Requirements

* Xcode 8.0
* Swift 3.0+

## Contribution and Maintenance 
Fonts available on iOS are surely subject to possible change,
and when they do the `Font` enum in this library will need to be updated as well.
If you would like to help maintain or improve this library please feel free to do so. 

## License

UIFontComplete is free software, and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE
