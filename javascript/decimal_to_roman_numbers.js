const symbolsWithValue = [
  { symbol: 'M', value: '1000' },
  { symbol: 'CM', value: '900' },
  { symbol: 'D', value: '500' },
  { symbol: 'CD', value: '400' },
  { symbol: 'C', value: '100' },
  { symbol: 'XC', value: '90' },
  { symbol: 'L', value: '50' },
  { symbol: 'XL', value: '40' },
  { symbol: 'X', value: '10' },
  { symbol: 'IX', value: '9' },
  { symbol: 'V', value: '5' },
  { symbol: 'IV', value: '4' },
  { symbol: 'I', value: '1' }
]

// Algorithm to resolve this problem
// 1. we need to divide the decimalNumber by symbolsWithName symbolsWithValue
// 2. Based on the quotient we are going to repeat that number of key values within the symbolsWithValue HashChangeEvent
// 3. We are going to calculate the modulus of the division operation and that number will be the new value for decimal_number
// 4. We repeat this process as many times as the decimal_number is zero

const convertDecimalToRomanValues = (decimalNumber) => {
  let finalRomanNumber = '';
  while (decimalNumber > 0) {
    symbolsWithValue.forEach((element) => {
      let division = Math.floor(decimalNumber / element.value);
      while (division--) {
        finalRomanNumber += element.symbol;
      }
      decimalNumber = decimalNumber % element.value;
    })
  }
  return finalRomanNumber;
};

console.log(`The roman number is ${convertDecimalToRomanValues(2999)}`);