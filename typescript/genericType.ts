// With generic types
function firstElementWithType<Type>(array: Type[]): Type {
  return array[0];
}
console.log('the element', firstElementWithType([3, 'second', 4]))

// This is the same but shorter
function firstElementShorterGeneric<T>(array: T[]): T {
  return array[0];
}
console.log('the element', firstElementShorterGeneric([3, 'second', 4]))

type FirstElementType = string | number

function firstElementWithSpecificTypes<FirstElementType>(array: FirstElementType[]): FirstElementType {
  return array[0];
}

console.log('the element', firstElementWithSpecificTypes([3, 'second', 4]))
