const jsonResponse = [
  { title: 'card 1', description: 'this is the first card element' },
  { title: 'card 2', description: 'this is the second card element' },
  { title: 'card 3', description: 'this is the third card element' },
  { title: 'card 4', description: 'this is the fourth card element' },
  { title: 'card 5', description: 'this is the fifth card element' },
  { title: 'card 6', description: 'this is the sixth card element' },
  { title: 'card 7', description: 'this is the seventh card element' },
  { title: 'card 8', description: 'this is the eight card element' },
]

function createCardElement(item) {
  const card = document.createElement('div');
  card.classList.add('max-w-sm', 'rounded', 'overflow-hiden', 'shadown-lg', 'm-4');

  const cardBody = document.createElement('div');
  cardBody.classList.add('px-6', 'py-4');

  const cardTitle = document.createElement('div');
  cardTitle.classList.add('font-bold', 'text-xl', 'mb-2');
  cardTitle.textContent = item.title;
  cardBody.appendChild(cardTitle);

  const cardText = document.createElement('p');
  cardText.classList.add('text-gray-700', 'text-base');
  cardText.textContent = item.description;
  cardBody.appendChild(cardText);

  card.appendChild(cardBody);

  return card;
}

function displayCards(data) {
  const container = document.getElementById('cardContainer');

  data.forEach((item) => {
    const card = createCardElement(item);
    container.appendChild(card);
  })
}

displayCards(jsonResponse);
