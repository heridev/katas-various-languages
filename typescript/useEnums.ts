export enum BaseColor {
  RED = 'red',
  GREEN = 'green',
  BLUE = 'blue',
  PINK = 'pink',
}

enum Blue {
  LIGHT = 'light',
  DARK = 'dark',
  MEDIUM = 'medium',
}

enum Gray {
  LIGHT = 'light-gray',
  DARK = 'dark-gray',
  MEDIUM = 'medium-gray',
}

type ColorPallet = Blue | Gray;
let something: ColorPallet = Blue.LIGHT;
console.log(something, 'something');

const color: string = BaseColor.RED;

console.log(color, 'color');
