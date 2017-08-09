//: Playground - noun: a place where people can play

/*
 Multi line comment
 */

import UIKit

//-------------------------------------------
//Variables
//-------------------------------------------
//Can define variable types using :Type after the variable name
var str:String = "Hello, playground"
var myName = "Daniel"
var myInt:Int = 4

print(myName)
print("I have \(myInt) mangos")

//Does not work this way for different vars
//print("I have " + myInt + "oranges")

//create a constant
let myConstant = "I'm a constant"
print(myConstant)

//-------------------------------------------
//String concatination
//-------------------------------------------
var a = 1
var b = "allo chum"
var c = "bad dog"

//still does not work
//print (a + " " + b)

print(b + " " + c)
b.capitalized
c.lowercased()
b.replacingOccurrences(of: "allo", with: "Helo")

//-------------------------------------------
//Maths
//-------------------------------------------
//+ Add, - Subtract, * multiply, / divide, % modulo

var num1 = 10
var num2 = 5

var result = ((num1 + num2) - num2 * num1 / num2) % num2

print(result)

//-------------------------------------------
//Comparison
//-------------------------------------------
// == equals, != not equal, > greater than, < less than, >= greater than or equal, <= less than or equal to

var x = 1
var y = 3

print(3>1)

//-------------------------------------------
//Logical Operators
//-------------------------------------------
// ! not, && and, || or 

var yes = true
var no = false

print(yes && no)

//-------------------------------------------
//Arrays
//-------------------------------------------

//can initialise both ways
//var myArray = [1,2,3,4]
//var myArray = Array<Int> = [1,2,3,4]
var myArray: [Int] = [1,2,3,4]

print(myArray.count)
print("My array length is: \(myArray.count)")
print(myArray[3])

//add new item to array
myArray.append(5)
myArray += [6]
print(myArray)

//insert items
myArray.insert(7, at: 0)
print(myArray)

//remove and replace
myArray.remove(at: 0)
myArray[2] = 10
print(myArray)

//-------------------------------------------
//Dictionary
//-------------------------------------------
//Basiaclly key value pairs

//define
var myDictionary = ["Bank":"Money", "School":"Book"]
var myDictionary1: [String:String] = ["Home":"Warm", "School":"Boring"]

print(myDictionary["Bank"]!) //use ! to just print the value
print(myDictionary.count)

//add items to dictionary
myDictionary["IE"] = "Ireland"

//update dictionary
myDictionary.updateValue("Security", forKey: "Bank")
print(myDictionary)

//remove items
myDictionary.removeValue(forKey: "IE")
print(myDictionary)

//-------------------------------------------
//Control flow
//-------------------------------------------
//if - else

var aIf = 10
var bIf = 11

//Can use == to comapre strings too
if aIf == bIf{
    print("They are equal")
}//end if

else{
    print("They are not equal")
}//end else

//elseif statement

var retirementAge = 65

if retirementAge <= 32{
    print("Too young")
}else if retirementAge >= 65{
    print("Cya later")
}else{
    print("Dunno")
}

var bankAccountBalance = 100
var cashRegistarMessage = bankAccountBalance >= 150 ? "You have bought the item" : "you are broke!"

//-------------------------------------------
//Loops
//-------------------------------------------

//for loops
for index in 0 ..< 10{
    print(index)
}

var arrayLoopTest = ["A", "B", "C"]
var i = 0

for i in 0 ..< arrayLoopTest.count{
    print(arrayLoopTest[i])
}

for arr in arrayLoopTest{
    print(arr)
}

//dictionary looping
var familyAges = ["A":1, "B":2, "C":3]

for (name, age) in familyAges{
    print("name is " + name + " and age is \(age)")
}

//while loops
var iWhile = 0

while iWhile < 5{
    print(iWhile)
    iWhile += 1
}

//do-while / repeat while loop
iWhile = 0

repeat{
    print(iWhile)
    iWhile += 1
}while (iWhile < 5)

//-------------------------------------------
// Functions
//-------------------------------------------

var len = 5

//can use inout keyword to modify origional variable
//func calculateArea(length: inout Int, width:Int) -> Int{
func calculateArea(length: Int, width:Int) -> Int{
    
    let area = length * width

    return area
}

//pass like so for inout
//calculateArea(length: &len, width: 10)
let area1 = calculateArea(length: len, width: 10)

//-------------------------------------------
// Optionals and Classes
//-------------------------------------------

//this variable may or may not be empty
var lotteryWinnings: Int?
lotteryWinnings = 500

//use ! to get the variable out of the optional (don't use it / (un wrap) stuff without an if)
//print(lotteryWinnings!)

if lotteryWinnings != nil{
  print(lotteryWinnings!)
}

//put optional in constant and print if its there (prefered way)
if let winnings = lotteryWinnings{
    print(winnings)
}

class Car{
    var model: String?
}

var veichle: Car?

//long way
if let v = veichle{
    if let m = v.model{
        print(m)
    }
}

veichle = Car()
//Always have to use the question mark when using optionals
veichle?.model = "Ford"

//short way
if let v = veichle, let m = v.model{
    print(m)
}

//use with arrays
var cars: [Car]?

cars = [Car]()

// , stands for where
if let carArr = cars, carArr.count > 0{
    //execute if not nil and the array is not empty
} else{
    cars?.append(Car())
    //default value of 0
    print(cars?.count ?? 0)
}


// implicitly un wrapped optional
// use ! to say there will definatley be a variable in it
class Person{
    private var _age: Int!
    
    //create computed property to initialise the varible to stop errors
    var age: Int{
        if _age == nil{
            _age = 20
        }
        
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var daniel = Person()
daniel.setAge(newAge: 20)

class Dog{
    var species: String
    
    //constructor
    init(someSpecies: String){
        self.species = someSpecies
    }
}

var dog = Dog(someSpecies: "Husky")
print(dog.species)

//Inheritance

public class Veichle{
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed :Double = 0
    
    init() {
        print("I am the child")
    }
    
    func drive(speedIncrease: Double){
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

//inherit from veichle
public class sportsCar: Veichle{
    
    override init() {
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 Series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
    
}





