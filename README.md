# swift-ui-studies

Learning swift-ui 

### Lesson 1

- Struct
- Views
- HStacks
- ZStacks
- ForEach
- Custom View


### Lesson 2 - Types

**struct and classes** 

Both look pretty much the same having a similar syntax. Having both: 
 - stored vars
 - computed vars
 - constant let (value never changes)
 - functions
 - initializers (like constructores)
 
 Differences: 
| struct | class |
|-------|------|
| valeu type| reference type |
| *copied* when passed or assigned| passed arround via *pointers* |
| copy on write | automatically reference counted |
| functional programming | object-oriented programming |
| no inheritance | inheritance(single) | 
| free *init* initializes All **var**s | free *init* initializes No **var**s |
| mutability must be explicitly stated | always mutable | 
| your "go to" data structure | used in specific circumstances |
| everything is a struct (based on tuts) | the ViewModel in MVVM is always a class |


**Generics**
We use when we don't really care what a type is, meaning when our *type agnostic* about our data structure. I.e: if we have an array of different types.


**functions as types**
You can declare a variable (or parameter to a func) to be of type function. The syntax includes the types of arguments and return value, you can do this anywhere any other type is allowed.

```swift
(Int, Int) -> Bool // takes two ints and returns a Bool

....
var operation: (Double) -> Double
```

> **Closures**: it is common to pass funcs arround that we are very often "inlining" them, we call this inlined funcs a *closure*.
