// Playground - noun: a place where people can play

import Cocoa

struct FullName {
  let preName: String
  let middleName: String?
  let familyName: String

  var fullName: String {
    // TODO
    return "\(preName) \(familyName)"
  }
}

extension Array where Generator.Element : Optional<String> {
  func filterOptionals() -> [String] {
    return self.filter { $0 != nil }.map { $0! }
  }
}

let king = FullName(preName: "Martin", middleName: "Luther", familyName: "King")
let potter = FullName(preName: "Harry", middleName: nil, familyName: "Potter")
let sander = FullName(preName: "Sander", middleName: nil, familyName: "Looijenga")

/*
-------------------------
PART 1, MAP
-------------------------
*/

let names = [king, potter, sander]

let familyNames = [String]() // TODO

print(familyNames) // must print ["King", "Potter", "Sander"]





















/*
-------------------------
PART 2, MAP
-------------------------
*/


let middleNames = [String]() // TODO

print(middleNames) // must print ["Luther"]



































/*
-------------------------
PART 3, MAP
-------------------------
*/

var numbers = Array(1..<10)

func square(input: [Int]) -> [Int] {
    return [] // todo
}

let allSquaresBelow100 = [] // TODO: compute all squares below 100


func flatten(input: [Int?]) -> [Int] {
    return [] // todo
}


// Once you define `flatten`, you can turn the following array into an array of Int's

let stringNumbers = ["one", "1", "-20"]



// BONUS: define your own map and filter.
