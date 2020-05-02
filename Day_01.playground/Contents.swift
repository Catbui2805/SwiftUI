
// MARK: - Day 01
// Day 1 – variables, simple data types, and string interpolation
//

import UIKit

// MARK: - Variables
var str = "Hello, playground"

// MARK: - String and intergers
var age = 38

// If you have large numbers, Swift lets you use underscores as thousands separators – they don’t change the number, but they do make it easier to read. For example:
var populartion = 8_000_000

// MARK: - Multi-line strings
var str1 = """
this goes
over multiple
lines
"""

var str2 = """
this goes \
over multiple \
lines
"""

// MARK: - Doubles and Booleans
var pi = 3.141

var awesome = true


// MARK: - String interpolation
var score = 85
var str3 = "Your score was \(score)"
var results = "Thes test results are here: \(str3)"


// MARK: - Constants
let taylor = "swift"


// MARK: - Type annotations
let str5 = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1993
let height: Double = 1.60
let taylorRocks: Bool = true


// MARK: - Summary
/*
 You’ve made it to the end of the first part of this series, so let’s summarize.

1. You make variables using var and constants using let. It’s preferable to use constants as often as possible.
2. Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
3. Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
4. String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
5. Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
 
 */
