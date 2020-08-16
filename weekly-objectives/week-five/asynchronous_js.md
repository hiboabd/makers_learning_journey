## Asynchronous programming

### What is it?

Normally, a given program's code runs straight along, with only one thing happening at once. If a function relies on the result of another function, it has to wait for the other function to finish and return, and until that happens, the entire program is essentially stopped from the perspective of the user.


When a web app runs in a browser and it executes an intensive chunk of code without returning control to the browser, the browser can appear to be frozen. This is called blocking; the browser is blocked from continuing to handle user input and perform other tasks until the web app returns control of the processor.

### Callbacks

Example: mimic blog post



### Promises
Promises were introduced in ES6. More elegant way to handle asynchronous data.

### Async await
