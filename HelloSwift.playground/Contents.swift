//: Playground - noun: a place where people can play
// by Cary Wu

import UIKit

var str = "Hello, playground"

//variables
var x = 100
var y = 1.1

//constants
let pi = 3

//operators
var z = x + 200
z * pi


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



