const vendingMachineChange = (totalEntered, itemCost) => {
  const denominations = [1, 5, 10, 25, 50, 100]
  const itemInCents = Math.floor(itemCost * 100);
  const totalEnteredCents = Math.floor(totalEntered * 100);
  let change = totalEnteredCents - itemInCents;

  return denominations.reverse().reduce((accumulator, denomination) => {
    const totalCoins = Math.floor(change / denomination);
    // creating a new array without mutating the previous one
    // because it is not possible actually
    // const newAccumulator = [...accumulator];
    // or
    const newAccumulator = [].concat(...accumulator);
    if (totalCoins >= 1) {
      newAccumulator.unshift(totalCoins);
      change -= (totalCoins * denomination)
    } else {
      newAccumulator.unshift(0);
    }
    return newAccumulator;
  }, []);

  // const coinResults = [];
  // denominations.reverse().forEach(denomination => {
  //   const totalCoins = Math.floor(change / denomination);
  //   if (totalCoins >= 1) {
  //     coinResults.unshift(totalCoins);
  //     change -= (totalCoins * denomination)
  //   } else {
  //     coinResults.unshift(0);
  //   }
  // })

  // return coinResults;
}

console.log('5, 0.99', vendingMachineChange(10, 1.99))
console.log('5, 0.99', vendingMachineChange(5, 0.99))
console.log('3.14, 1.99', vendingMachineChange(3.14, 1.99))
console.log('3, 0.01', vendingMachineChange(3, 0.01))
console.log('4, 3.14', vendingMachineChange(4, 3.14))
console.log('4, 3.1444444444', vendingMachineChange(4, 3.14))
