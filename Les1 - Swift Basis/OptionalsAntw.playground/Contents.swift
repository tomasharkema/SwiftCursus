//: Playground - noun: a place where people can play

import UIKit

struct FullName {
  let preName: String
  let middleName: String?
  let familyName: String

  var fullName: String {
    let unwrappedMiddleName = middleName.map { " \($0)" } ?? ""
    return "\(preName)\(unwrappedMiddleName) \(familyName)"
  }
}

let king = FullName(preName: "Martin", middleName: "Luther", familyName: "King")

print(king.fullName)