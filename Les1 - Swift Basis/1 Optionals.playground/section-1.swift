// Playground - noun: a place where people can play

import Cocoa

/* 
-------------------------
PART 1, OPTIONALS
-------------------------
*/

struct FullName {
  let preName: String
  let middleName: String?
  let familyName: String

  var fullName: String {
    // TODO
    return "\(preName) \(familyName)"
  }
}

let king = FullName(preName: "Martin", middleName: "Luther", familyName: "King")
let potter = FullName(preName: "Harry", middleName: nil, familyName: "Potter")

print(king.fullName) // Print Martin Luther King
print(potter.fullName) // Print Harry Potter









/*
-------------------------
PART 2, OPTIONALS
-------------------------
*/

var optionalNumber: Int? = 3
optionalNumber = nil

let cities = ["Paris": 2243, "Madrid": 3216, "Amsterdam": 881, "Berlin": 3397]
let capitals = ["France": "Paris", "Spain": "Madrid",
               "The Netherlands": "Amsterdam", "Sweden": "Stockholm"]

func populationOfCapital(countryName: String) -> Int? {
    // TODO
    return nil
}


populationOfCapital("France") // should return { Some 2243 }
