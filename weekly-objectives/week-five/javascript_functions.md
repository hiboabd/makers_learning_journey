## Javascript functions

### What is a function?

A function is something that takes a bunch of inputs and returns one or more values.

The function keyword in JavaScript creates an object that can be invoked.

This is more or less the same as a method, however a method is typically part of a class object and the term is exclusive to object oriented programming. In other words. methods are functions of classes.

### Rules/things to note

  * You must include the parentheses when invoking a function, even if there are no arguments. If you omit the parentheses, it seems like a variable.
  * If you want something returned from your function, then you must explicitly use the return keyword. If this is omitted, JavaScript will return 'undefined'.
  * Functions end in semi-colons as they are executable statements.

### Anonymous functions

An anonymous function is a function without a name.

Functions stored in variables do not need function names. They are always invoked (called) using the variable name.

```js
var x = function (a, b) {return a * b};
var z = x(4, 3);
```

### Examples:

### Defining a function with a name

function myFunction(a, b) {
  return a * b;
}

### Defining a variable that is a function
var greeting = function(person){ return 'Hello, ' + person + '!';}
> undefined

greeting('hibo')
> "Hello, hibo!"

### Defining a function pt.2 (this would require declaring the variable first)

hiTimmy = function() {return 'Hi, Timmy!';}
> ƒ () {return 'Hi, Timmy!';}

hiTimmy()
> "Hi, Timmy!"

### Defining a function pt.3 (this takes an argument)

hi = function(person) {return "Hi, " + person + "!";}
> ƒ (person) {return "Hi, " + person + "!";}

hi('Jenny')
> "Hi, Jenny!"
