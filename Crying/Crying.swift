//
// Crying.swift
//
// Copyright (c) 2014 Toshihiro Morimoto. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

// http://symbolcodes.tlt.psu.edu/bylanguage/mathchart.html
// /, =, -, +, !, *, %, <, >, &, |, , or ~, or any of the Unicode characters

// MARK: - ><

prefix operator >< {}
prefix public func ><<T> (value: T?) -> T {
    let v  = value!
    println("[\(NSDate())] \(v)")
    return v
}

postfix operator >< {}
postfix public func ><<T> (value: T?) -> T {
    let v = value!
    println("[\(NSDate())] \(v)")
    return v
}


// MARK: - ></

prefix operator ></ {}
prefix public func ></<T> (value: T?) -> T {
    let v = value!
    print("[\(NSDate())] ")
    debugPrintln(v)
    return v
}

postfix operator ></ {}
postfix public func ></<T> (value: T?) -> T {
    let v = value!
    print("[\(NSDate())] ")
    debugPrintln(v)
    return v
}
