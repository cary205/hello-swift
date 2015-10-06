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


