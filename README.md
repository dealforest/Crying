# Crying
[![Build Status](http://img.shields.io/travis/dealforest/Crying.svg?style=flat)](http://travis-ci.org/dealforest/Crying)

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
                  ><string or string><
         }
```

so cool!!!!

### debugPrintln

If you want to use `debugPrintln`, changing the `><` and `></`.

## What does name mean?

The face character `><` and `></` to express the sadness in Japan.

Similar to the expression `:(`. so Crying!

## TODO
- [ ] Support [Carthage](https://github.com/Carthage/Carthage)
- [ ] Add caller to log

---

## Contact

### Creator

- [Toshihiro Morimoto](http://github.com/dealforest) ([@dealforest](https://twitter.com/dealforest))

### License

Crying is released under the MIT license. See LICENSE for details.
