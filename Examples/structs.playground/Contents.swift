//: Playground - noun: a place where people can play

import Foundation

enum Currency: Float {
  case EUR = 1.0000
  case DOL = 0.9879
}

protocol Product {
  var price: Price { get set }
}

struct Price {
  var currency: Currency
  var value: Int
}

struct Auto: Product {
  var price: Price
}

struct House: Product {
  var price: Price
}

var price = Price(currency: .EUR, value: 1000)
let auto = Auto(price: price)

price.currency = .DOL
price.value = 10000000

let home = House(price: price)

print(auto.price)
print(home.price)

// TODO: Implement Vodka met currency roebel.

struct Vodka {

}

// TODO: implement extension

extension Price {
  var convertedPrice: Int {
    return 0 // TODO: implement this
  }
}

print(home.price.convertedPrice)

let closure = { (text: String) in
  text
}

closure("")
