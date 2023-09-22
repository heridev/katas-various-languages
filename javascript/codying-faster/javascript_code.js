let myMainKata = '';

async function makeARequestForTemplate() {
  const templateUrl = 'https://gist.githubusercontent.com/heridev/8206e1abcc6078ffe1c9da02fdc1d9eb/raw/46a2d63ae3f9d6e2c8772a977f31fc17d19519f9/storeFunctionsVariables.js'
  const response = await fetch(templateUrl);
  return await response.text();
}

function accessTheMainContent() {
  debugger
  console.log(myMainKata, 'myMainKata')
}

async function InitializingApp() {
  console.log('initializing this supper app...')
  const result = await makeARequestForTemplate();
  myMainKata = result;
  document.getElementById('main-content').innerHTML = result;
  document.getElementById('main-editor').innerHTML = result;
  accessTheMainContent();
}

document.addEventListener('DOMContentLoaded', InitializingApp);
