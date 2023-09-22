const fs = require('fs');
const lockFile = JSON.parse(fs.readFileSync('package-lock.json', 'utf8'));
const enterValue = process.argv.slice(2)[0]

let getAncestors = (previousAncestors, expectedDependency) => {
  // console.log(previousAncestors, 'previousAncestors...')
  const dependencies = lockFile.dependencies;

  Object.entries(dependencies).find((dependencyHash) => {
    const dependencyName = dependencyHash[0]
    const isItThere = dependencyHash[1].requires && dependencyHash[1].requires[expectedDependency];
    if (isItThere) {
      previousAncestors.push(dependencyName);
      // console.log(previousAncestors, 'ancestors after...')
      getAncestors(previousAncestors, dependencyName)
    }
  })

  return previousAncestors;
}

// console.log(getAncestors([], 'vm2'))
console.log(getAncestors([], enterValue))
