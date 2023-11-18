const isPalindrome = (word) => {
  return word.split('').reverse().join('') === word;
}

console.log('isPalindrome sugus', isPalindrome('sugus'));
console.log('isPalindrome racer', isPalindrome('racer'));
