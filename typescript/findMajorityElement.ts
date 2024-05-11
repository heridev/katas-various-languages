function findMajorityElement(nums: number[]) {
  if (nums === null || nums.length === 0) return null;

  let majorityIndex: number = 0;
  let count: number = 0;

  for (let i: number = 0; i < nums.length; i++) {
    if (nums[i] == nums[majorityIndex]) {
      count = +1;
    } else {
      count--;
      if (count === 0) {
        majorityIndex = i;
        count = 1;
      }
    }
  }

  return nums[majorityIndex];
}

// const numbers: number[] = [3, 2, 3]
// console.log(findMajorityElement(numbers), 'result')

const numbers: number[] = [3, 2, 2, 2, 3]
console.log(findMajorityElement(numbers), 'result')
