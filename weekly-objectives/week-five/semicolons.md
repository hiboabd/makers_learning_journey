## Quick guide to semi-colons

### When are they required?

  * When two or more statements are on the same line.

    Example:
    ```js
    var i = 0; i++        // <-- semicolon obligatory
                          //     (but optional before newline)
    var i = 0             // <-- semicolon optional
    i++                  // <-- semicolon optional
    ```

  * They are optional when a single statement is followed by a line break or there is only one statement in a block.

  ** Note: A statement is a piece of code that tells the computer to do something.


  ```js
  var i;                        // variable declaration
  i = 5;                        // value assignment
  i = i + 1;                    // value assignment
  i++;                          // same as above
  var x = 9;                    // declaration & assignment
  var fun = function() {...};   // var decl., assignmt, and func. defin.
  alert("hi");                  // function call
  ```

### When should they be avoided?
  * After a closing curly bracket. The only exception to this are assignment statements.

  ```js
  // NO semicolons after }:
  if  (...) {...} else {...}
  for (...) {...}
  while (...) {...}

  // BUT:
  do {...} while (...);
  var obj = {};
  ```
