# What are closures?

[Useful article](https://medium.com/@prashantramnyc/javascript-closures-simplified-d0d23fa06ba4)


# Examples (explained)

```js
function makeCounter() {
  var n = 0;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = makeCounter();
console.log(counter())
console.log(counter())
console.log(counter())
```

1. The variable counter is declared and the value is set to the function makeCounter()
2. counter is now a function (the makeCounter() function to be precise). This means it can be called.
3. When counter is called, firstly, the variable n is created and set to 0.
4. Then, the makeCounter function returns the call of the inner, anonymous function.
5. This inner function knows the value of n as it has access to the variables that the makeCounter() function created.
6. n is incremented by 1 and returned to the console.
7. The console prints 1 (0 + 1).

8. When the counter() function is called a second time, the makeCounter() function sets n to 0 again.
9. The inner function is called, however the value of n for this function is 1 as this value has been preserved as the closure from the previous method call
10. Therefore, 1 is added to 1 and the new value is 2 which is printed to the console.

11. The steps from 8-10 are repeated again for the third counter() call. This time the value of n is 2 for the inner function and 1 is added to it to make it 3. Note that the value of n for the outer function has been assigned to 1.


The main thing to note is that the value of n ceases to exist for the makeCounter() function, once it has finished its execution. However, for the inner function, the value of n is preserved as a closure and will continue to exist.


```js
function counter(firstN) {
  var n = firstN;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = counter(5);
console.log(counter())
console.log(counter())
console.log(counter())
```

1. The variable counter is set to the function counter() with an argument of 5 passed through.
2. The variable n is declared and set to the value 5 that was passed through.
3. The inner function is returned and it increments 5 (which it has access to as it is preserved as a closure) by 1.
4. The inner function returns 6 and finishes execution
5. The counter variable finishes execution and returns 6.
