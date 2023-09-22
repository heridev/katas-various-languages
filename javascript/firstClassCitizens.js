// // first class citizens

// 1. created at runtime 
// 2. assigned to a variable or data structure 
// 3. Passed as argument to a function 
// 4. Returnedas a value from a function 

//   In programming languages where functions are first - class citizens or first - class objects, this means that functions can be treated like any other dta(e.g.nubers, strings, or objects)

//   Javascript is one such language where functions are first - class citizens. 

//   Here's what you can do with functions in Javascript, thanks to their first-class nature. 

// 1. Store functions in variables

const greet = function () {
  console.log("hello, world!")
}

greet();

// 2. Store functions in arrays or other data structures

const functions2 = [
  function () { console.log('first function is here...') },
  function () { console.log("another one...") }
]

const functions = [
  function () { console.log("first function is here ") },
  function () { console.log("second function is there...") }
]

functions[1]();
functions[0]();

// 
