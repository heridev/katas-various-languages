// Solution 1: If you are not allowed to convert the number to string(number.toString())

const isPalindrome = (number) => {
  if (number < 0) return false;

  return reverseWholeNumbers(number) === number;
}

const reverseWholeNumbers = (number) => {
  let newValue = 0;
  // extract result
  while (number > 0) {
    let remainder = number % 10;
    newValue *= 10;
    newValue += remainder;
    number = Math.floor(number / 10);
  }

  return newValue;
}

console.log('******************************* First solution')
console.log('isPalindrome(121)', isPalindrome(121));
console.log('isPalindrome(-121)', isPalindrome(-121));
console.log('isPalindrome(10)', isPalindrome(10));
console.log('******************************* First solution')

// Solution 2: Traditional approach using toString() and working with array
// NOTE: remember to be very specific about the split('') and join('')
// this is not the same as in Ruby that you don't need to specify 
// any params and it would use the default, but in JS that is not the case

const isPalindromeTwo = (number) => {
  const reversedNumber = number.toString().split('').reverse().join('');
  return reversedNumber == number.toString();
}

console.log('******************************* Second solution')
console.log('isPalindromeTwo(121)', isPalindromeTwo(121));
console.log('isPalindromeTwo(-121)', isPalindromeTwo(-121));
console.log('isPalindromeTwo(10)', isPalindromeTwo(10));
console.log('******************************* Second solution')


/* Solution 3: using toString but not using the conversion to array and then joining again
using a solution more like working with plain strings

This solution works by comparing from back to first until both interactions are done
*/

const isPalindromeThree = (number) => {
  if (number < 0) return false;
  number = number.toString();

  let left = 0
  let right = number.length - 1;

  while (right > 0) {
    if (number[left] !== number[right]) {
      return false;
    }
    ++left;
    --right;
  }

  return true;
}

console.log('******************************* Third solution')
console.log('isPalindromeThree(121)', isPalindromeThree(121));
console.log('isPalindromeThree(-121)', isPalindromeThree(-121));
console.log('isPalindromeThree(10)', isPalindromeThree(10));
console.log('******************************* Third solution')
