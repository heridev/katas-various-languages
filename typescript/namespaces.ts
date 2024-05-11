
export namespace VALUES {
  export const myFunction = () => {
    console.log('myFunction')
  }
  // export const curryingSum = (value: number): number => {
  //   return (secondValue: number) => (
  //     value * secondValue
  //   )

  // }

  export function curryingSum(value: number): number {
    return function (secondValue: number): number {
      return 3;
    }
  }
}
