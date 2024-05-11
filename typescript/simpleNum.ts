const prefix: string = '🤔';

runTheLearningSamples()

function runTheLearningSamples() {

  function displayProductInfo(id: number, name: string) {
    console.log(`${prefix} typed parameters`);
    console.log(`product id =${id} and name=${name}`);
  }

  displayProductInfo(10, 'pizza')
}

const sampleProducts = [
  {
    id: 1,
    name: 'pizza slice',
    icon: 'fas fa-pizza-slice'
  },
  {
    id: 2,
    name: 'Ice cream',
    icon: 'fas fa-ice-cream',
  },
  {
    id: 3,
    name: 'Cheese',
    icon: 'fas fas-cheese'
  },
]

function getProductNames(): string[] {
  return sampleProducts.map((product) => product.name);
}

console.log(getProductNames());

type ProductType = {
  id: number;
  name: string;
  icon: string;
}

function findProductById(id: number): ProductType | undefined {
  return sampleProducts.find((product) => product.id === id);
}

console.log(findProductById(2));
