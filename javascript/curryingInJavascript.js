// directly into currying

// Using function declaration syntax ||
//       function statement syntax

// function sum(firstValue) {
//   return function (secondValue) {
//     return firstValue + secondValue;
//   }
// }

// Using fat arrow syntax
const sum = (firstValue) => secondValue => (firstValue + secondValue);

const firstSum = sum(10);
console.log(firstSum(90), 'the resultt');
