//: Playground - noun: a place where people can play
// by Cary Wu

import UIKit

var str = "Hello, playground"

//variables
var x = 100
var y = 1.1
var dou: Double = 10 //it's Double

//constants
let pi = 3

//operators
var z = x + 200
z * pi

//convert type
var intAndString = String(x) + str


//String===============================================================
//concatenate String
var hello = "Hello, "
let swift = "Swift"
var cool = "😎"
//Hello, Swift. let's play 😎 it!
var sentence = hello + swift + ". let's play " + cool + " it!"

//String interpolation
let version = 2.2
//Hello, Swift 2.2. let's play 😎 it!
//var sentence2 = hello + swift + version + ". let's play " + cool + " it!"   //ERROR!! version is Double
var sentence2 = "\(hello) \(swift) \(version). let's play \(cool) it!"

//String properties
//var emptyString   //ERROR!!
var emptyString = ""
var oddString = "AbcdEFg"
var loweroddString = "abckefg"
emptyString.isEmpty
oddString.uppercaseString
oddString == loweroddString   //case sensitive


//Array===============================================================
//declare array
var emptyArray1 = Array<String>()
var emptyArray2 = [String]()
var mutableArray = [11, 22, 33, 44, 55]
let immutableArray = ["aa", "bb", "cc"]

//access elements in array
let firstElement = mutableArray[0]
let lastElement = mutableArray[mutableArray.count - 1]

//array properties
mutableArray.append(77)
//immutableArray.append("QQ")   //ERROR!! immutable Array
mutableArray.insert(0, atIndex: 3)
mutableArray.removeAtIndex(2)
mutableArray
mutableArray.removeAll(keepCapacity: true)
mutableArray.capacity
mutableArray.removeAll()
mutableArray.capacity


//Dictionaries==============================================================
//declare
var emptyDictionary = [String : Int]()
var emptyDictionary1 = Dictionary<String, Int>()

var color = ["sky":"blue", "hair":"black", "banana":"yellow"]
color["sky"]

let optionalColor = color["sky"]
let optionalColor2 = color["tree"]

//add, change and remove (un-order)
color
color["cloud"] = "white"
color
color["sky"] = "lighrblue"
color
color["hair"] = nil
color


//Control Flow==============================================================
//if - else
if emptyArray1.isEmpty {
    print("empty")   //println ERROR??  ==>>>see Apple's website. put print() instead of println()
} else {
    print("full")
}

//deal with optional
var country = ["JAPAN", "CHINA", "INDIA"]
//find : find the index of an element in an array
//let index = find(country, "CHINA")   //find ERROR??
let index = country.indexOf("CHINA")
let index2 = country.indexOf("USA")

//for - in
//1 - 9
for i in 1..<10 {
    print(i)
}
//inclusive version: 1 - 10
for i in 1...10 {
    print(i)
}

//enumerate an array
country
for i in 0..<country.count {
    print(country[i])
}
for name in country {
    print(name)
}

//Dictionaries
color
for (key, value) in color{
    key + "=" + value
}

//while (condition)
var idx = 0
while(idx < 15) {
    print(idx)
    idx++
}


//Enumerations==============================================================
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue


//Something to play---------------------------------------------------------------------------------------
let optionalInt: Int? = nil
//var actualInt: Int = optionalInt!
var implicitlyUnwrappedOptionalInt: Int! = optionalInt

var optionalName: String? = "123"
var greeting = "Hello!"
if var name = optionalName {
    greeting = "Hello, \(name)"
}
var optionalHello: String? = "Hello"
if let hello = optionalHello where hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}

//var one_a = 1
//var two_a = 2
if var one_a :Int? = nil where one_a == nil, var two_a :Int? = 2{
    print("OO")
} else {
    print("XX")
}
