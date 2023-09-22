interface IPerson {
  firstName: string;
  lastName: string;
}

// const sayHello = (person: IPerson): string => {
//   return `Hello ${person.firstName} ${person.lastName}`;
// }
const sayHello = (person: IPerson): void => {
  console.log(`hello ${person.firstName}`);
}

interface INumber {
  value: number;
}

const multiplyByTen = (objectValue: INumber): number => {
  return objectValue.value * 10;
}
console.log(multiplyByTen({ value: 10 }));

sayHello({ firstName: 'John', lastName: 'Doe' });

interface IWork {
  company: string;
  position: string;
}

interface IEmployee extends IWork {
  name: string;
  lastname: string;
}

const printInterfaceEmployee = (employee: IEmployee): string => {
  return `${employee.name} works at ${employee.company} as ${employee.position}`;
}

const employeeAttributes: IEmployee = {
  name: 'heriberto',
  lastname: 'perez',
  company: 'RailsWare',
  position: 'Software Engineer',
}

console.log(printInterfaceEmployee(employeeAttributes));
