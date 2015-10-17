# iOS Cursus
### _Tomas Harkema_

---

# Download Xcode
### _*en wel nu*_

--- 

# Wat kan ik na deze *cursus*?

---

# Wat kan ik na deze *cursus*?
- Je kan _*Swift*_
- Je kan in basis _*Functioneel Programmeren*_
- Je kan een simpele _*iOS app*_ in elkaar zetten
- 

---

# Swift
### vanuit _*Java*_

---

# Swift
### vanuit _*Java*_
#### functioneel!!
---

```java
import Magic
import Leviosa
import MovableObject
import Attachment

public class WimgardiumLeviosa extends Magic implements Leviosa {

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
			return LeviosaMovement.StuckToGround;
		}
		state = State.DoingSomething;
		return LeviosaMovement.Flying;
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
public class WimgardiumLeviosa extends Magic implements Leviosa {
// het is leviosáá, niet leviosâh
	private State state;
	// kan null zijn
	@Override @Nullable // compilecheck?
	public MagicTrick doMagicTrick(Context context) {
		if (state.isDoingSomethingAlready()) { // NullPointerException
			return null; // Hoezo, null?
		}
		return new MagicTrickImpl(); // ;?
	}
	// public?
	public Leviosa.LeviosaMovement applyToObject(MovableObject object) {
		if (object.attachment == Attachment.ToGround) {
			state = State.DoingNothing;
			return LeviosaMovement.StuckToGround;
		}
		state = State.DoingSomething;
		return LeviosaMovement.Flying; // LeviosaMovement is al bekent
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

# _*Optionals*_?

---

# _*Optionals*_?

### Ik ben er wel, of niet. _*EXPLICIET*_

---

```swift
enum Optional<T> {
	case Some(T)
	case None
}
```

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

let unknownName: NilConvertible = nil
let knownName: String = "Tomas"

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
    let unwrappedMiddleName = middleName.map { " \($0)" } ?? ""
    return "\(preName)\(unwrappedMiddleName) \(familyName)"
  }
}
```

---

# `map`?

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

let intArray = array.map { string in
	return Int(string)
}

print(intArray) // [123, 456, 789]

```
---

```swift
let array = ["123", "456", "789"]

let intArray = array.map { string in
	return Int(string)
}
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
	elementIncluded: (A -> Bool) ) -> [A] {
	
	var newArray = [A]()
	for element in elements {
		if elementIncluded(element) { newArray.append(element) }
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

#`[A] -> A`

---

#`[Int]`
#`-> Int`

---

```swift
let ints = [1,2,3,4,5] // [Int]

let sum = ... // Int

```

---

```swift
let ints = [1,2,3,4,5] // [Int]

var sum: Int = 0

for int in ints {
	sum += int
}

```

---

### `reduce()`

---

### `reduce(initialValue: Int)`

#### `var sum: Int = 0`

---

### `reduce(initialValue: Int, combine: (Int, Int) -> Int)`
#### `sum += int`

---

# `(Int, Int) -> Int`

---

# `(Int, Int) -> Int`
### doet ergens aan denken?
---


# `+ - * /`

---

```swift
func +(lhs: Int, rhs: Int) -> Int {
	return lhs + rhs
}
func -(lhs: Int, rhs: Int) -> Int {
	return lhs - rhs
}
func *(lhs: Int, rhs: Int) -> Int {
	return lhs * rhs
}
func /(lhs: Int, rhs: Int) -> Int {
	return lhs / rhs
}
```

---

# `+` op string?

---

## `"Hallo " + name`

---

```swift
let names = ["King", "Potter"]

var present = "Mensen die aanwezig zijn:"

for name in names {
	present += " " + name
}

print(present) // "Mensen die aanwezig zijn: King, Potter"

```

---

#### `reduce(initialValue: String, combine: (String, String) -> String) -> String`

##### `var present = "Mensen die aanwezig zijn:"`
##### `present +=`

---

## `(String, String) -> String`
#### `present += " " + name`

---

# Les1 
## _`Reduce`_

---

# `[A] -> B`

---

```swift
let names = [potter, king]

let present = names.reduce("De aanwezigheid is") { prev, name in
	prev += " " + name.familyName
}

```

---

---

#`enum`

---

```swift
enum Optional<T> {
	case Some(T)
	case None
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
	NetworkError error = apiResult.error;
}

```

---

# _*enumeration*_

## can only be one value

---

```java
public enum RegistrationProcess {
	Unregistered,
	RegistrationPending,
	EmailValidation,
	Registrered
}
```

---

```swift
enum ApiResult<T, E> {
	case Success(T)
	case Error(E)
}

let result = API.getUsers() // returns ApiResult<[User], NetworkError>

```

---

```swift
let result = API.getUsers()

switch result {
	case let .Success(result):
		print(result)
		
	case let .Error(error):
		print(error)
}
```

---

```swift
class API {
	static func getUsers() -> ApiResult<[User], NetworkError> {
		// do some network request
		// do some json serialization
		// do some conversion to objects
	}
}

```

---

```swift
class API {
	static func getUsers() -> ApiResult<[User], NetworkError> {
		let jsonData = NSData(contentsOfURL: NSURL(...))) // -> NSData?
		// do some json serialization
		// do some conversion to objects
	}
}

```

---

```swift
class API {
	static func getUsers() -> ApiResult<[User], NetworkError> {
		if let jsonData = NSData(contentsOfURL: NSURL(...))) { // -> NSData?
			// do some json serialization
			// do some conversion to objects
			// return result
		}
		return .Error(...)
	}
}

```

---

```swift
class API {
	static func getUsers() -> ApiResult<[User], NetworkError> {
		if let jsonData = NSData(contentsOfURL: NSURL(...))) {
			if let json = do some json serialization {
				if let objects = do some conversion to objects {
					return .Result(...)
				}
			}
		}
		return .Error(...)
	}
}

```

---

```swift
class API {
	static func getUsers() -> ApiResult<[User], NetworkError> {
		if let jsonData = NSData(contentsOfURL: NSURL(...))) {
			if let json = do some json serialization {
				if let objects = do some conversion to objects {
					return .Result(...)
				} else {
					return .Error(...)
				}
			} else {
				return .Error(...)
			}
		}
		return .Error(...)
	}
}

```

---

# `map`?

---

### `Result<A> -> Result<B>`

---

```swift
func getData(url: NSURL) -> Result<NSData, NSError> {
	if let data = NSData(contentsOfURL: url) {
		return .Success(data)
	}
	return .Error(NSError(...))
}

func decodeData(data: NSData) -> Result<JsonData, NSError> {
	if jsonData = doDataConversion(data) {
		return .Success(jsonData)
	}
	return .Error(NSError(...))
}

let data = getData(...)

let jsonData = data.map { result in 
	decodeData(result)
}

// type jsonData?

```

---

```swift
func getData(url: NSURL) -> Result<NSData, NSError> {
	if let data = NSData(contentsOfURL: url) {
		return .Success(data)
	}
	return .Error(NSError(...))
}

func decodeData(data: NSData) -> Result<JsonData, NSError> {
	if jsonData = doDataConversion(data) {
		return .Success(jsonData)
	}
	return .Error(NSError(...))
}

let data = getData(...) // Result<NSData, ...>

let jsonData = data.map { result in
	decodeData(result) // -> Result<JsonData, ...>
}

// Result<Result<NSData, NSError>, NSError>

```

---

```swift
func getData(url: NSURL) -> Result<NSData, NSError> {
	if let data = NSData(contentsOfURL: url) {
		return .Success(data)
	}
	return .Error(NSError(...))
}

func decodeData(data: NSData) -> Result<JsonData, NSError> {
	if jsonData = doDataConversion(data) {
		return .Success(jsonData)
	}
	return .Error(NSError(...))
}

let data = getData(...) // Result<NSData, ...>

let jsonData = data.flatMap { result in
	decodeData(result) // -> Result<JsonData, ...>
}

// Result<NSData, NSError>

```

---

## `flatMap` 
## `map` + `flatten`

---

#### map: `A -> B`

---

#### map: `Result<NSData> -> B`

---

#### map: `Result<NSData> -> Result<Result<JsonData>>`

---

#### map: `Result<NSData> -> Result<Result<JsonData>>`

#### flatten: `Result<Result<JsonData>> -> Result<JsonData>`

---

### flatMap: `Result<A> -> Result<B>`
#### met *toegang* mogelijkheid tot *aanvulling* tot het result

---

# Les1 
## _`Result`_

---

```swift

func flatMap<A, B>(res: Result<A>, transform: A -> Result<B>) -> Result<B> {
	switch res {
		case let .Success(success):
			transform(success) // returned Result<B>
		case let .Error(error):
			return .Error(error)
	}
}

```


