# Crying
[![Platform](http://img.shields.io/badge/platform-iOS/OSX-blue.svg?style=flat)](https://developer.apple.com/devcenter/ios/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![Build Status](http://img.shields.io/travis/dealforest/Crying.svg?style=flat)](http://travis-ci.org/dealforest/Crying)

Crying is very simple print debug library written in Swift.

It will help your debugging cycle.

## Requirements

* iOS 7.0+ / Mac OSX 10.9+
* Xcode 6.1

## Installation

### Use [Carthage](https://github.com/Carthage/Carthage)


> 1. Create a Cartfile that lists the frameworks you’d like to use in your project.
2. Run carthage update. This will fetch dependencies into a Carthage.checkout folder, then build each one.
3. On your application targets’ “General” settings tab, in the “Embedded Binaries” section, drag and drop each framework you want to use from the Carthage.build folder on disk.

Cartfile
```
github "dealforest/Crying"
```

### Drag the source code

Please add `Crying.swift` file into your project

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
                  ><string or string><
         }
```

so cool!!!!

### debugPrintln

If you want to use `debugPrintln`, changing the `><` and `></`.

## What does name mean?

The face character `><` and `></` to express the sadness in Japan.

Similar to the expression `:(`. so Crying!

## FAQ

### Don't use Crying with Cathage

```
dyld: Library not loaded: @rpath/Alamofire.framework/Alamofire
  Referenced from: ...
  Reason: image not found
```

[Library not loaded エラー？ここを見直そう](http://qiita.com/kakipo/items/3cd87e00bc96bc3888b2)

## TODO
- [ ] Add caller to log

---

## Contact

### Creator

- [Toshihiro Morimoto](http://github.com/dealforest) ([@dealforest](https://twitter.com/dealforest))

### License

Crying is released under the MIT license. See LICENSE for details.
