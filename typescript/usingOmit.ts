type User = {
  id: number;
  name: string;
  birthDate: Date;
}

type UsingWithoutId = Omit<User, "id">;

const myUserName: UsingWithoutId = {
  name: 'heriberto',
  birthDate: new Date()
}

const myUser: User = {
  id: 1234,
  name: 'heriberto',
  birthDate: new Date()
}

console.log(myUserName, 'myUserName');
