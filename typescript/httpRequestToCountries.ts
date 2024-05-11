import fetch from 'node-fetch'
const BASE_URL = 'https://restcountries.com/v3.1'

const asyncFetchRequest = async () => {
  const fetchRequest = await fetch(`${BASE_URL}/all`)
  const fetchedData = await fetchRequest.json()
  console.log(fetchedData, 'fetchedData')
}

asyncFetchRequest();
