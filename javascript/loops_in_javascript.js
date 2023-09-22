const arrayOne = ['heriberto', 'perez', 'magaña', 'jose'];
const arrayObjects = [{ name: 'heriberto' }, { name: 'Alma' }, { name: 'andrea' }];

// while
console.log("while")
let counter = 0;
// while(arrayOne.length - 1 > 0) {
while (counter <= arrayOne.length) {
  console.log(`element: ${arrayOne[counter]}`);
  counter++
}

// do... while
console.log('begin do...while==========')
counter = 0;
do {
  console.log(arrayOne[counter]);
  counter++
} while (counter < arrayOne.length)
console.log('end do...while==========')

// for i
console.log('for i')
for (let i = 0; i < arrayObjects.length; i++) {
  console.log(`the value of the object is ${arrayObjects[i].name}`)
}
console.log('end of for i')

// for in
for (index in arrayObjects) {
  console.log(index, 'index', arrayObjects[index].name);
}

// for of
for (record of arrayObjects) {
  console.log(record.name, 'record.name')
}

// forEach
arrayObjects.forEach(element => {
  console.log('the element name object', element.name)
});
