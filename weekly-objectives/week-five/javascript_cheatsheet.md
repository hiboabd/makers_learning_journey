## Javascript cheatsheet

### Defining a variable?
var greeting = function(person){ return 'Hello, ' + person + '!';}
> undefined

greeting('hibo')
> "Hello, hibo!"

### Defining a method pt.2

hiTimmy = function() {return 'Hi, Timmy!';}
> ƒ () {return 'Hi, Timmy!';}

hiTimmy()
> "Hi, Timmy!"

### Defining a method pt.3

hi = function(person) {return "Hi, " + person + "!";}
> ƒ (person) {return "Hi, " + person + "!";}

hi('Jenny')
> "Hi, Jenny!"

### Defining a method in a class object
class Greeting2 { hello(person){ return "Hello, " + person; } }
>undefined

MyGreeting2 = new Greeting2.hello("hibo")
(this gave a type error as you need to create the instance before invoking a method)
>VM2203:1 Uncaught TypeError: Greeting2.hello is not a constructor
    at <anonymous>:1:15
>(anonymous) @ VM2203:1

greeting = new Greeting2
>Greeting2 {}

greeting.hello("hibo")
>"Hello, hibo"

### Experimentation with function keyword/forEach
array.forEach(function(number) {console.log(number)});
>1
>2
>3
undefined

array.forEach(unicorn(number) {console.log(number)});
>VM3843:1 Uncaught SyntaxError: missing ) after argument list

array.forEach(function(number) {console.log(number)});
>1
>2
>3
undefined

var callback = unicorn(arg) { console.log(arg); };
>VM4084:1 Uncaught SyntaxError: Unexpected token '{'

var callback = function(arg) { console.log(arg); };
>undefined

var unicorn = function(arg) { console.log(arg); };
>undefined

array.forEach(unicorn);
>1
>2
>3
undefined

# Objects (hashes)

hash = {"1" => "ice cream", "2" => "pizza", "3" => "burger"}
> VM4335:1 Uncaught SyntaxError: Unexpected token '=>'

hash = { name: "Tim", age: 25, shoe_size: 9 }
> {name: "Tim", age: 25, shoe_size: 9}

hash["age"]
> 25

hash[:age]
> VM4726:1 Uncaught SyntaxError: Unexpected token ':'

hash[age:]
> VM4738:1 Uncaught SyntaxError: Unexpected token ':'

hash["name"]
>"Tim"

another_hash = { "name" "Tim", "age" 25 }
>VM4866:1 Uncaught SyntaxError: Unexpected string

hash.age
>25

hash.name
>"Tim"

hash.shoe_size
>9

hash.forEach (function(key, value) {console.log(value)});
>Uncaught TypeError: hash.forEach is not a function
    at <anonymous>:1:6

# How to iterate over an object

https://zellwk.com/blog/looping-through-js-objects/


# Closures
