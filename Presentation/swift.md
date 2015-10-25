# iOS Cursus
### _Tomas Harkema_

---

# _Join slack!_

## hva-ict.slack.com

---

# _*Download*_ Xcode
### _*en wel nu*_

#### Mac App Store

--- 

# Wat kan ik na deze *cursus*?

---

# Wat kan ik na deze *cursus*?
- Je kan _*Swift*_
- Je kent _*functionele features*_ van _*Swift*_
- Je kan een simpele _*iOS app*_ in elkaar zetten

---

# Swift
### vanuit _*Java*_

---

# Swift
### vanuit _*Java*_
#### functioneel!!

---

# Historie

- C 
- C++
- Objective C
- Java
- Rust, Haskell, Ruby, Python
- *Swift*

---

# C

```c
#include <stdio.h>

int main(void)
{
    printf("hello, world\n");
}
```

---

# C++

```c++
#include <stdio.h>

// The HelloWorld class definition. 
class HelloWorld { 
        public: 
    HelloWorld() {}            // Constructor. 
    ~HelloWorld() {}          // Destructor. 
    void print() { 
        printf("Hello World!\n"); 
    } 
};

// The main progam. 
int main() { 
    HelloWorld a;           // Create a HelloWorld object. 
    a.print();                  // Send a "print" message to the object. 
    return 0; 
} 
```

---

# OBJECTIVE-C

```objc
#import <Foundation/Foundation.h>

@interface HelloWorld
@end

@implementation HelloWorld

-(void)print
{
	NSLog(@"Hello World!");
}

@end

// main program.
int main(int argc, const char * argv[]) {
	HelloWorld *a = [[HelloWorld alloc] init];
	[a print];
	return 0;
}
```

---

# java

```java
public class HelloWorld {
	public void print() {
		System.out.println("Hello World");
	}
}

// main program.

public class Main {
	public static void main(String[] args) {
		HelloWorld a = new HelloWorld();
		a.print();
    }
}

```

---

#swift

```swift
class HelloWorld {
	func printHello() {
		print("Hello World!")
	}
}

let a = HelloWorld()
a.print()
```

---

# _*SWIFT*_ is
- _Multi-paradigm_ (Protocol-oriented programming, object-oriented, functional, imperative, block structured)
- Static-, strong-, inferred typed
- Compiled
- Auto Reference Counted (_*ARC*_)

---

# SYNTAX

---

# SYNTAX
- `var` / `let`
- `class`
- `struct`
- `enum`
- Closures

---

```java
public String string;
```

---

```swift
var string: String
```

---

```java
public final String string;
```

---

```swift
let string: String
```

---

# `class`

---

```java
public class Foo extends Bar implements Dough {

	private String string;
	
	public String getString() {
		return string;
	}
	
	public void doSomething() {
		//...
	}
}
``` 

---

```swift
class Foo: Bar, Dough {
	let string: String
	
	func doSomething() {
		//...
	}
}
```

---

```java
import Magic
import Leviosa
import MovableObject
import Attachment

public class WingardiumLeviosa extends Magic implements Leviosa {

	private State state;
	
	@Override @Nullable
	public MagicTrick doMagicTrick(Context context) {
		if (state.isDoingSomethingAlready()) {
			return null;
		}
		return new MagicTrick();
	}
	
	public Leviosa.LeviosaMovement applyToObject(MovableObject object) {
		if (object.attachment == Attachment.ToGround) {
			state = State.DoingNothing;
			return Leviosa.LeviosaMovement.StuckToGround;
		}
		state = State.DoingSomething;
		return Leviosa.LeviosaMovement.Flying;
	}
	
}
```

--- 

```java
import Magic
import Leviosa
import MovableObject
import Attachment
// Imports?
public class WingardiumLeviosa extends Magic implements Leviosa {
// het is leviosáá, niet leviosâh
	private State state; // kan null zijn
	
	@Override @Nullable // compilecheck?
	public MagicTrick doMagicTrick(Context context) {
		if (state.isDoingSomethingAlready()) { // NullPointerException
			return null; // Hoezo, null?
		}
		return new MagicTrickImpl(); // ;?
	}
	// public?
	public Leviosa.LeviosaMovement applyToObject(MovableObject object) {
		if (object.attachment == Attachment.ToGround) { // Attachment al bekent
			state = State.DoingNothing; // State al bekent
			return Leviosa.LeviosaMovement.StuckToGround; // LeviosaMovement is al bekent
		}
		state = State.DoingSomething; // State is al bekent
		return Leviosa.LeviosaMovement.Flying; // LeviosaMovement is al bekent
	}
	
}
```

--- 

```swift
class WimgardiumLeviosá : Magic, Leviosa {
	
	var stateOptional: State?
	
	override func doMagicTrick(context: Context) -> MagicTrick? {
		if let state = stateOptional where state.isDoingSomethingAlready {
			return nil
		}
		return MagicTrickImpl()
	}
	
	func applyToObject(object: MovableObject) -> LeviosaMovement {
		if object.attachment == .ToGround {
			state = .DoingNothing
			return .StuckToGround
		}
		state = .DoingSomething
		return .Flying
	}
	
}
```

---

# `class`

- members zijn _*muteerbaar*_ in zelfde instance
- Inheritance
- Composition _*(`protocol`)*_
- Zelf _*definieerbare*_ initializers
- zijn _*extendable*_

---

```swift
class Foo {
	func limitedBehavior() { }
}

// even in other file
extension Foo {
	func extendedBehavoir() { }
}

let foo = Foo()
foo.limitedBehavior()
foo.extendedBehavoir()
```

---

# extend _*Foundation*_ classes

```swift
class NSDate { /*compiled source*/ }

extension NSDate {
	func format(format: String) -> String {
		return "" // some format
	}
}
```

---

# `struct`

---


```java
Foo foo = new Foo(); 	// allocate memory for foo
foo; 					// reference to memory containing foo object
foo.barMethod();		// call method on reference containing java object

foo.bar = new Bar();	

// assign newly allocated Bar memory reference
// to bar reference space 
// in reference memory containing java object
```

---

# _*Alles*_ gaat via _*references*_

---

# Webwinkel

---

# Webwinkel

```javaProduct home = new Auto();Price price = new Price();
price.currency = Currency.EUR;price.price = 1000;

home.price = price;
```

---

```java
public enum Currency {
	EUR, DOL
}

public class Price {
	public Currency currency;
	public int value; // in cents
}

public abstract class Product {
	public Price price;
	//...
}

```

`/Examples/java-references`

---

# Webwinkel

```java
Product auto = new Auto();
Product house = new House();
Price price = new Price();
price.currency = Currency.EUR;price.value = 1000;

auto.price = price;

price.currency = Currency.DOL;
price.value = 10000000;

house.price = price;```

---# Webwinkel

```java
Product auto = new Auto();
Product house = new House();
Price price = new Price();
price.currency = Currency.EUR;price.value = 1000;

auto.price = price;

price.currency = Currency.DOL;
price.value = 10000000;

house.price = price;

// auto.price?```

---

```java
Product auto = new Auto();
Product house = new House();
Price price1 = new Price();
price1.currency = Currency.EUR;price1.value = 1000;

auto.price = price1;

Price price2 = new Price();

price2.currency = Currency.DOL;
price2.value = 10000000;

house.price = price2;
```

---

# _*VALUETYPES*_!

#### Swift doet dit _*automagisch*_

---

# _*`struct`*_
### structure

---

```swift
struct Price {
	var currency: Currency
	var value: Int
}
```

---

```swift
enum Currency: Int {
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

```

---

```swift
var price = Price(currency: .EUR, value: 1000)
let auto = Auto(price: price)

price.currency = .DOL
price.value = 10000000

let house = House(price: price)

print(auto)
print(house)
```

`/Examples/structs.playground`

---

# `struct`
- Members zijn _*muteerbaar*_, nieuwe instance
- Inheritance, Composition, _*Extendable*_
- Zelf _*definieerbare*_ initializers

---

# `enum`

---

```swift
enum Currency {
  case €
  case $
  case ₽
}
```

---

```swift
enum Currency: Double {
  case € = 1.0000
  case $ = 0.9879
  case ₽ = 0.0146
}
```
---

```swift
let currency = //...

if currency == .€ {
	print("Uit Europa!")
} else {
	print("Ergens anders")
}
```

---

```swift
let currency = //...

if currency == .€ {
	print("Uit Europa!")
} else if currency == .₽ {
	print("Россия-Матушка")
} else {
	print("Ergens anders")
}
```

---

```swift
switch currency {
case .€:
	print("Uit Europa!")
case .₽:
	print("Россия-Матушка")
default:
	print("Ergens anders")
}
```

---

```swift
switch currency {
case .€:
	print("Uit Europa!")
case .₽:
	print("Россия-Матушка")
case .$:
	break
}
```

---

```swift
switch currency {
case .€:
	print("Uit Europa!")
case .₽, .$:
	print("Niet uit Europa")
}
```

---

# `enum:` _*associated*_ values

---

# BARCODE

---

```java
public interface Barcode {
	public String getValue();
	public BarcodeType getType();
}

public enum BarcodeType {
	UPCA, QRCode
}

public class BarcodePrinter {
	public static void printBarcode(Barcode barcode) {
		switch barcode.getType() {
			case UPCA:
				//...
				break;
			case QRCode:
				//...
				break;
		}
	}
}
```

---

```java
public interface Barcode {
	public String getValue();
}

public class UPCA implements Barcode {
	private int numberSystem;
	private int manufacturer;
	private int product;
	private int check;
	
	public BarcodeType getType() { return BarcodeType.UPCA; }
	
	public String getValue() {
		return numberSystem + " " + " " + manufacturer + " "
		 	+ product + " " + check
	}
}

```

---

```java
public class UPCA implements Barcode {
	private int numberSystem;
	private int manufacturer;
	private int product;
	private int check;
	
	public BarcodeType getType() { return BarcodeType.UPCA; }
	
	public String getValue() {
		return numberSystem + " " + " " + manufacturer + " " 
			+ product + " " + check
	}
}

public class QRCode implements Barcode {
	private String value;
	
	public BarcodeType getType() { return BarcodeType.QRCode; }
	
	public String getValue() {
		return value;
	}
}
```

---

## hoop _*code*_ voor

```java 
public enum BarcodeType {
	UPCA, QRCode
}
```

---

```swift
enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
```

---

```swift
let productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}
```

---

```java
class ApiResult<T, E> {
	public T result;
	public E error;
	
	public boolean isSuccessful() {
		return result != null;
	}
	
	public boolean hasErrorButHasResult() {
		return result != null && error != null
	}	
	
}

API.getUsers() // returns ApiResult<List<User>, NetworkError>

```

---

```java
ApiResult<> apiResult = API.getUsers();

if (apiResult.isSuccessful()) {
	List<Users> users = apiResult.result;
} else {
	NetworkError error = apiResult.error;
}

```

---

```java
ApiResult<> apiResult = API.getUsers();

if (apiResult.isSuccessful()) {
	List<Users> users = apiResult.result;
	
} else if (apiResult.hasErrorButAlsoHasResult()) {
	//...?
	
} else {
	NetworkError error = apiResult.error; // NullPointerException?
}

```

---

```swift
enum ApiResult<T> {
	case Success(T)
	case Error(NSError)
}

let result = API.getUsers() // returns ApiResult<[User]>

```

---

```swift
let apiResult = API.getUsers()

switch apiResult {
	case let .Success(users):
		print("er zijn \(users.count)")
		
	case let .Error(error):
		print(error)
}
```

---

# _*Optionals*_

---

# _*Optionals*_

### Ik ben er wel, of niet. _*EXPLICIET*_

---

```swift
let name: Optional<String>
```

--- 

```swift
let name: String?
```

--- 

```swift

let unknownName = Optional.None
let knownName = Optional.Some("Tomas")

```
--- 

```swift

let unknownName = nil
let knownName = "Tomas"

```

---


```swift

let unknownName: String? = nil
let knownName: String? = "Tomas"

```

---

```swift
struct FullName {
	let preName: String
	let middleName: String?
	let familyName: String
}

```

---

```swift
struct FullName {
	let preName: String
	let middleName: String?
	let familyName: String
	
	func fullName() -> String {
		// ...?
	}
}
```

---

# Les1 _`Optionals`_

---

```swift
let king = FullName(preName: "Martin", middleName: "Luther", familyName: "King")
let potter = FullName(preName: "Harry", middleName: nil, familyName: "Potter")

// -- 

king.middleName           // Optional("Luther")  type String?
potter.middleName         // nil                 type String?

king.middleName?.length   // Optional(6)         type Int?
potter.middleName?.length // nil                 type Int?

king.middleName ?? ""     // "Luther"            type String
potter.middleName ?? ""   // ""                  type String

if let middleName =  king.middleName {
	print(middleName) // Luther
} else {
	// geen middleName :(
}

```

---

```swift
struct FullName {
  let preName: String
  let middleName: String?
  let familyName: String

  var fullName: String {
	
	if let middleName = middleName {
		return "\(preName) \(middleName) \(familyName)"
	}  
    return "\(preName) \(familyName)"
  }
}
```

---

# Closures

---

```java
Button button = findViewByID(R.id.button);
// click!
```

---

```java
class MainActivity extends Activity implements View.OnClickListener {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState); // nooit super vergeten!
		
		final Button button = findViewByID(R.id.button);
		button.setOnClickListener(this);
	}

	public void onClick(View view) {
		switch (view.getId()) {
			case R.id.button:
				// click
				break;
		}
	}
}
```

---

# java 1.1 Anonymous classes 

```java
final Button button = findViewByID(R.id.button);

button.setOnClickListener(new View.OnClickListener() {
	public void onClick(View view) {
		// click!
	}
});
```

---

# java 8 lambdas

```java
final Button button = findViewByID(R.id.button);

button.setOnClickListener((view) -> {
	// click!
});
```

---

```javascript
$(".button").click(function() {
	console.log("click!");
});
```

---

```swift
let inlineFunction = {
	print("hallo!")
}

inlineFunction() // hallo!
```

---

```swift
let inlineFunction = { message: String in
	print("hallo \(message)!")
}

inlineFunction("wereld") // hallo wereld!
```

---

# TYPE?

---

## `Void -> Void`

---

## `String -> ()`

---

```swift
let closure: String -> String = { text in
	text
}

let closure = { (text: String) in
	text
}

func function(text: String) -> String {
	return text
}

// type closure?
// type function?

```

---

## `String -> String`

---

# Constructor `UIAlertAction`

```swift
UIAlertAction(
	title: String?,
	style: UIAlertActionStyle, 
	handler: ((UIAlertAction) -> Void)?
)
```

---

```swift
UIAlertAction(title: "Message", style: .Default, handler: { action in
	// message
})
```

---

# tailing closure

```swift
UIAlertAction(title: "Message", style: .Default) { action in
	// message
}
```

---

# SWIFT
## _*Functioneel*_

---

# `map`

---

# `A -> B`

---

# `Foo -> Bar`

---

```swift
let array = ["123", "456", "789"]

let intArray: [Int]

```

---

```swift

let array = ["123", "456", "789"]

var intArray = [Int]()

for string in array {
	intArray.append(Int(string))
}

print(intArray) // [123, 456, 789]

```

---

```swift
let array = ["123", "456", "789"]

let intArray = array.map({ string in
	return Int(string)
})

print(intArray) // [123, 456, 789]

```

---


```swift
let array = ["123", "456", "789"]

func stringToInt(element: String) -> Int {
	return Int(element)
}

let intArray = array.map(stringToInt)

// [String] -> [Int]
print(intArray) // [123, 456, 789]

```

---


```swift
let array = ["123", "456", "789"]

let intArray = array.map({ element in
	return Int(element)
})

// [String] -> [Int]
print(intArray) // [123, 456, 789]

```

---

```swift
let names = [king, potter] // type?

```

---

```swift
let names = [king, potter] // [FullName]

```

---

```swift
let names = [king, potter] // [FullName]

let familyNames = ...?
```

---

# Les1 
## _`MapAndFilter`_

---

```swift
func map<A, B>(array: [A], transform: (A -> B) ) -> [B] {
	var newArray = [B]()
	for element in array {
		let newElement = transform(element)
		newArray.append(newElement)
	}
	
	return newArray
}
```

---

```swift
func filter<A>(elements: [A], 
	predicate: (A -> Bool) ) -> [A] {
	
	var newArray = [A]()
	for element in elements {
		if predicate(element) { newArray.append(element) }
	}
	return newArray
}
```

---

```swift
let names = [king, potter] // [FullName]

let familyNames = names.map { $0.familyName }
```

---

```swift
let names = [king, potter] // [FullName]

let middleNames = names
	.map { $0.middleName }
	.filterOptionals()
```

---

## Uit hoeveel karakters bestaat een *`middleName`* gemiddeld?

---

# `reduce`

---

#`[A] -> B`

---

#`[Int]`
#`-> Int`

---

```swift
let ints = [1,2,3,4,5] // [Int]

let sumFromInts = ... // Int

```

---

```swift
let ints = [1,2,3,4,5] // [Int]

var sumFromInts: Int = 0

for element in ints {
	sumFromInts = sumFromInts + element
}

```

---

```swift

let ints = [1,2,3,4,5]

let sumFromInts = ints.reduce(0, { sum, element in
	return sum + element
})

```

---

```swift

let ints = [1,2,3,4,5]

var productFormInts = 1

for element in ints {
	productFormInts = productFormInts * element
}

```

---
```swift

let ints = [1,2,3,4,5]

let productFormInts = reduce(1, { product, element in
	return product * element
})
```

---

# `(Int, Int) -> Int`

---

# `+ - * /`

---

```swift
func +(lhs: Int, rhs: Int) -> Int {
	// implementation...
}
func -(lhs: Int, rhs: Int) -> Int {
	// implementation...
}
func *(lhs: Int, rhs: Int) -> Int {
	// implementation...
}
func /(lhs: Int, rhs: Int) -> Int {
	// implementation...
}
```

---

### waar geld dit nog meer?

---

# `+` op string

---

## `"Hallo " + name`

---

```swift
let names = ["King", "Potter"]

var present = "Mensen die aanwezig zijn:"

for name in names {
	present = present + " " + name
}

print(present) // "Mensen die aanwezig zijn: King Potter"

```

---

```swift
let names = ["King", "Potter"]

let present = reduce("Mensen die aanwezig zijn:", { present, name in
	return present + " " + name
})


print(present) // "Mensen die aanwezig zijn: King Potter"

```

---

# Les1 
## _`Reduce`_

---

```swift
let names = [potter, king]

let present = names.reduce("De aanwezigheid is") { prev, name in
	return prev + " " + name.familyName
}

```

---

# ☕️

---

# Let's build some _*App*_!

---

# Cocoa

---

- _*Foundation*_ (`NS*`)
- _*Cocoa*_ (`UI*`)

---

- _*Foundation*_ (`NS*`)
	- `NSString`, `NSNumber`, `NSDate`, `NSData`
- _*Cocoa*_ (`UI*`)
	- `UIView`, `UIViewController`, `UIButton`

---

## Android _vs_ Cocoa

---

## Android _vs_ Cocoa


- `Activity`, `Fragment` => `UIViewController`
- `ListActivity` => `UITableViewController`
- `GridView` => `UICollectionView`
- `Button` => `UIButton`
- `TextView` => `UILabel`

---

# _demo_

---

# MAAK EEN APP

- een label
- een knop
- die afteld
- `NSTimer.scheduledTimerWithTimeInterval`

---

# Auto layout

---

# Segue

