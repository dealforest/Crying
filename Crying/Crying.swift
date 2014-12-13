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
    printDecorator() { println(v) }
    return v
}

postfix operator >< {}
postfix public func ><<T> (value: T?) -> T {
    let v = value!
    printDecorator() { println(v) }
    return v
}


// MARK: - ></

prefix operator ></ {}
prefix public func ></<T> (value: T?) -> T {
    let v = value!
    printDecorator() { debugPrintln(v) }
    return v
}

postfix operator ></ {}
postfix public func ></<T> (value: T?) -> T {
    let v = value!
    printDecorator() { debugPrintln(v) }
    return v
}

func printDecorator(closure: () -> Void) {
    var formatter: NSDateFormatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd hh:mm:ss ZZZ"
    print("[\(formatter.stringFromDate(NSDate()))] ")

    closure()

    // TODO: I want to replace backtrace.
    // frame #2: 0x0000000104f252d9 CryingTests`CryingTests.CryingCallPoftfixTestCase.(obj=(text = "I'm so hungry...")) -> () -> ()).(implicit closure #1) + 89 at CryingTests.swift:72
    
    var symbol = NSThread.callStackSymbols()[2] as String
    // [2, CryingTests, 0x00000001085c62d9, _TFFC11CryingTests25CryingCallPoftfixTestCase20testCallPostfixValueFS0_FT_T_u_KT_GSqPSs9AnyObject__, +, 89]
    let caller: [String] = split(symbol, { $0 == " " })
    if caller.count >= 5 {
        println("\tat \(caller[3]) L:\(caller[5])")
    }
    else {
        println("\tat unknown")
    }
}
