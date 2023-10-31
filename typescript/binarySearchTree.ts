
class BSNode {
  value: number;
  left: BSNode | undefined;
  right: BSNode | undefined;
  constructor(number: number, left?: BSNode, right?: BSNode) {
    this.value = number;
    this.left = left;
    this.right = right;
  }
}

/*
valid BST
      5
     / \
    3   8
*/
let leftNode: BSNode = new BSNode(3);
let rightNode: BSNode = new BSNode(8);
let node: BSNode = new BSNode(5);
node.left = leftNode;
node.right = rightNode;

/*
valid BST
      5
     / \
    3   9
   / \
  1   4

invalid BST
      5
     / \
    3   9
   / \
  1   7
*/
let leftNodeTwo: BSNode = new BSNode(3);
let rightNodeTwo: BSNode = new BSNode(9);
let nodeTwo: BSNode = new BSNode(5);
let thirdLevelLeft: BSNode = new BSNode(1);
// invalid
let thirdLevelRight: BSNode = new BSNode(7);
// valid
// let thirdLevelRight: BSNode = new BSNode(4);
nodeTwo.left = leftNodeTwo;
nodeTwo.right = rightNodeTwo;
leftNodeTwo.left = thirdLevelLeft;
leftNodeTwo.right = thirdLevelRight;

function isValidBST(currentNode: BSNode | undefined, low: number, high: number): boolean {
  if (!currentNode) return true;

  let value: number = currentNode.value;

  if ((value > low && value < high) &&
    isValidBST(currentNode.left, low, currentNode.value) &&
    isValidBST(currentNode.right, currentNode.value, high)
  ) {
    return true;
  }

  return false;
}

function checkValidBST(node: BSNode): any {
  const result: boolean = isValidBST(node, - Infinity, Infinity);
  return result;
}

console.log('checkValidBST(node)', checkValidBST(node))
console.log('checkValidBST(node)', checkValidBST(nodeTwo))

