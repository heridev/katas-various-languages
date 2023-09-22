type TUser = {
  name: string;
  age: number;
  email?: string;
};

const users: TUser[] = [
  {
    name: 'John',
    age: 25,
  },
  {
    name: 'John 2',
    age: 26,
  },
]
console.log(users, 'users')

type TWork = {
  company: string;
  position: string;
}

type TEmployee = TWork & {
  name: string;
}

const printEmployeeData = (employee: TEmployee): string => {
  return `${employee.name} works at ${employee.company} as a ${employee.position}`;
}

// class Employee implements TEmployee {
//   name: 'Heriberto  Magaña'
//   company: 'RailsWare'
//   position: 'Software Engineer'
// }

// const newEmployee = new Employee();
const employeeAttributes: TEmployee = {
  name: 'Heriberto',
  company: 'RailsWare',
  position: 'Software Engineer'
}

// employeeAttributes
console.log(printEmployeeData(employeeAttributes));

// for validating option types
type Theme = 'light' | 'dark' | 'system';

const theme: Theme = 'system'
console.log(theme, 'theme')

export { };
