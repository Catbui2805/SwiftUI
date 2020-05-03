/*
 Day 2 – arrays, dictionaries, sets, and enums
 
 */

import UIKit

// MARK: - Arrays – test
let hoang = "Hoang Nguyen"
let nguyen = "Nguyen Tran"
let le = "Le Le"
let hung = "Hung Dam"
let thao = "Thao Dinh"

let result = [hoang, nguyen, le , hung, thao]


// MARK: - Sets – test
let color1 = Set(["Red", "Green", "Blue"])

let color2 = Set(["Red", "Green", "Blue", "Red", "Green"])


// MARK: - Tuples – test
var name = (first: "Nguyen", last: "Tran")
name.0
name.1


// MARK: - Arrays vs sets vs tuples – test
// 1. If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Truong Dinh", city: "Ha noi")

// 2. If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["Green", "Blue", "Red"])

// 3. If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Long", "Hoang", "Nguyen", "Le"]


// MARK: - Dictionaries – test
let heights = [
    "Nguyen": 1.65,
    "Le": 1.60
]

heights["Le"]


// MARK: - Dictionary default values – test
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]

favoriteIceCream["Charlotte"]

// you should
favoriteIceCream["Charlotte", default: "Unknown"]


// MARK: - Creating empty collections – test
var teams = [String: String]()
// we can then add entries later on, like this:
teams["Paul"] = "Red"

// Create an empty array to store intergers like this:
var resultArray = [Int]()

// Create an empty set
var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var array = Array<Int>()


// MARK: - Enumerations – test
let result5 = "failure"

let result6 = "failed"
let result7 = "fail"

enum Result {
    case success
    case failure
}


// MARK: - Enum associated values – test
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")


// MARK: - Enum raw values – test
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)


// MARK: - Complex types: Summary – test
/*
 You’ve made it to the end of the second part of this series, so let’s summarize:

1. Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
2. Arrays store items in the order you add them, and you access them using numerical positions.
3. Sets store items without any order, so you can’t access them using numerical positions.
4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
5. Dictionaries store items according to a key, and you can read items using those keys.
6. Enums are a way of grouping related values so you can use them without spelling mistakes.
7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
 */
