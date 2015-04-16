# Crying
[![Build Status](http://img.shields.io/travis/dealforest/Crying.svg?style=flat)](http://travis-ci.org/dealforest/Crying)
[![Platform](http://img.shields.io/badge/platform-ios | osx-blue.svg?style=flat)](https://developer.apple.com/devcenter/ios/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/badge/license-MIT-333333.svg?style=flat)](http://travis-ci.org/dealforest/Crying)

Crying is very simple print debug library written in Swift.

It will help your debugging cycle.

## Requirements

* iOS 7.0+ / Mac OSX 10.9+
* Xcode 6.1

## Usage

### println

```Swift
Alamofire.request(.GET, "http://httpbin.org/get")
         .responseString { (_, _, string, _) in
                  println(string)
         }
```

#### Non-use Crying
```Swift
var request = Alamofire.request(.GET, "http://httpbin.org/get")
printlen(request)
request.responseString { (_, _, string, _) in
        println(string)
}
```

#### Use Crying
```Swift
import Crying

Alamofire.request(.GET, "http://httpbin.org/get")><
         .responseString { (_, _, string, _) in
                  string><
         }
```

so cool!!!!

### debugPrintln

If you want to use `debugPrintln`, changing the `><` and `></`.

## Installation

> For application targets that do not support embedded frameworks, such as iOS 7, Crying can be integrated by including the `Crying.swift` source file directly. Yes, this sucks.

_Due to the current lack of [proper infrastructure](http://cocoapods.org) for Swift dependency management, using Crying in your project requires the following steps:_

1. Add Crying as a [submodule](http://git-scm.com/docs/git-submodule) by opening the Terminal, `cd`-ing into your top-level project directory, and entering the command `git submodule add https://github.com/dealforest/Crying.git`
2. Open the `Crying` folder, and drag `Crying.xcodeproj` into the file navigator of your app project.
3. In Xcode, navigate to the target configuration window by clicking on the blue project icon, and selecting the application target under the "Targets" heading in the sidebar.
4. Ensure that the deployment target of Crying.framework matches that of the application target.
5. In the tab bar at the top of that window, open the "Build Phases" panel.
6. Expand the "Target Dependencies" group, and add `Crying.framework`.
7. Click on the `+` button at the top left of the panel and select "New Copy Files Phase". Rename this new phase to "Copy Frameworks", set the "Destination" to "Frameworks", and add `Crying.framework`.

### Use [Carthage](https://github.com/Carthage/Carthage)

> 1. Create a Cartfile that lists the frameworks you’d like to use in your project.
2. Run carthage update. This will fetch dependencies into a Carthage.checkout folder, then build each one.
3. On your application targets’ “General” settings tab, in the “Embedded Binaries” section, drag and drop each framework you want to use from the Carthage.build folder on disk.

Write your `Cartfile`
```
github "dealforest/Crying"
```

### Use CocoaPods

[CocoaPods Is Ready for Swift](http://swiftwala.com/cocoapods-is-ready-for-swift/)

Write your `Podfile`
```ruby
pod 'Crying', :git => "https://github.com/dealforest/Crying.git", :branch => "podspec"
```


## What does name mean?

The face character `><` and `></` to express the sadness in Japan.

Similar to the expression `:(`. so Crying!

## FAQ

### Don't use Crying with Cathage

```
dyld: Library not loaded: @rpath/Crying.framework/Crying
  Referenced from: ...
  Reason: image not found
```

[Library not loaded エラー？ここを見直そう](http://qiita.com/kakipo/items/3cd87e00bc96bc3888b2)

### What is the difference between the suffix and prefix?

#### In the case of prefix


```
><Alamofire.request(.GET, "http://httpbin.org/get")
           .responseString { (_, _, string, _) in
           }
```

```
pritnln(Alamofire.request(.GET, "http://httpbin.org/get")
         .responseString { (_, _, string, _) in
         })
```

#### In the case of suffix

```
Alamofire.request(.GET, "http://httpbin.org/get")><
         .responseString { (_, _, string, _) in
         }
```

```
let request = Alamofire.request(.GET, "http://httpbin.org/get")
println(request)
request.responseString { (_, _, string, _) in
}
```

---

## Contact

### Creator

- [Toshihiro Morimoto](http://github.com/dealforest) ([@dealforest](https://twitter.com/dealforest))

### License

Crying is released under the MIT license. See LICENSE for details.
