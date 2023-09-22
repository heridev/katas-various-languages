// procedural style
// procedural style organizes code in a top-down linear
// progression through a pre-determined set of operations
// usually collected together in related units called
// procedures

let counter = 0;

function incrementCounter() {
        counter++;
}

function displayCounter() {
        console.log(`producedural result: ${counter}`);
}


incrementCounter();
incrementCounter();
displayCounter();

// Object oriented style
// Oo style organizes code by collecting logic and data together
// into units called classes
class Counter {
  constructor() {
    this.counter = 0;
  }

  incrementCounter() {
          this.counter ++;
  }

  displayCounter() {
          console.log('object oriented counter', this.counter);

  }
}

const counterObject = new Counter();
counterObject.incrementCounter();
counterObject.incrementCounter();
counterObject.displayCounter();

// Functional paradigm style
// FP style organizes code into functions(pure computations as 
// opposed to procedures), and that adaptations of those functions
// as values
const incrementCounterFunctional = (x) => x + 1;
const displayCounterFunctional = (x) => console.log('functional counter: ', x);

const newCounter = [0].map(
        incrementCounterFunctional
).map(
        incrementCounterFunctional
).map(incrementCounterFunctional)[0];
displayCounterFunctional(newCounter);

