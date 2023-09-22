const isPalindrome = (word: string): boolean => {
  const cleanedWord = word.toUpperCase().replace(' ', '')
  return cleanedWord.split('').reverse().join('') == cleanedWord;
}

console.log('is sugsus a palindrome?', isPalindrome('sugus'))

