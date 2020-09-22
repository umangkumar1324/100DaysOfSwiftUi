import UIKit
// variable
var str = "Hello, playground"
//string interpolation
"\(str)"
//constants
let get = 4
//type annotation
var ello: String = "Hello"
// array(most common)
let beattles = ["john", "paul", "george","ringo"]
// sets(items stored in random order)(no order)
let colors = Set(["red", "blue","green"])
//tuples: can't change type, basically a dictionary
var name = (first:"Umang",last: "Swift")
//dictionary
let heights = [
    "Taylor": 1.78,
    "Ed": 1.5
]

heights["Taylor"]
heights["charles", default: 0]

//creating empty collections
var teams = [String:String]()
teams["paul"] = "Red"

//enums
let result = "failure"
let result2 = "Failed"

enum Result{
    case success(topic:String)
    case failure
}
let result3 = Result.success(topic: "ello")
//operator overloading
//operators add ints but also, join strings/arrays
//compound assignment operators
var score = 10
score += 1
// &&=and    ||=or
//switch case

//range
let range = 1..<6
let range1 = 1...6
// exiting loops
// us the "break" word in a loop to exit it

//functions
func printHelp(){
    let message = """
Welcome to myApp!!

Run this app inside a dictionary of images and MyApp will resize them all into thumbnails
"""
    print(message)
}

// accepting parameters
func helloWorld(number:Int){
    print(number*number)
}
//returning values
func square(number:Int)->Int{
    return(number*number)
}
//closure
//accepting parameters in a closure
let driving = {(place:String) in
    print("Im driving to \(place) now")
}
driving("London")
//returning a value from closures
let drivingWithReturn = {(places:String)-> String in
    return ("Im driving to \(places)")
}
print(drivingWithReturn("georgia"))

//closures as a parameter
let walking = {
    print("I am walking")
}

func travel(action:() -> Void){
    print("I'm gettng ready to go")
    action()
    print("HEllo there")
}
//trailing closure syntax
travel {
    print("IM HERE!")
}

//using closures as parameters when they accept parameteres
func travels(action:(String)-> String){
    print("I'm gettng ready to go")
    print(action("London"))
    print("HEllo there")
}
travels{(place:String) -> String in
    return ("I'm in \(place)")
}

// multiple parameters in closure
func travels1(action:(String,Int)-> String){
    print("I'm gettng ready to go")
    print(action("London",60))
    print("HEllo there")
}
travels1{
    return "Im going to \($0), its about \($1) miles aways"
}





