// Phase I:
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x); // x maintains reassignment
}
// mysteryScoping1();  // in block, in block

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x); // x is unchanged & does not maintain reassignment
}
// mysteryScoping2(); // in block, out of block

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block'; // throws an error when attempting to reassign const
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping3(); // syntax error "Identifier 'x' has already been declared

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping4(); // in block, out of block

function mysteryScoping5()  {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again'; // won't allow since reassigning twice in 1 block
  console.log(x);
}

// mysteryScoping5(); // syntax error "Identifier 'x' has already been declared
// --------------------------------------

// madLib:
function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

// console.log(madLib('make', 'best', 'guac'));

// isSubstring:
function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}
// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

// fizzBuzz:
function fizzBuzz(array) {
  let newArray = [];
  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) { // || will not work here
      newArray.push(el);
    }
  });
  return newArray;
}

// console.log(fizzBuzz([6, 8, 15, 7, 80])); // should return [6, 80]

// isPrime:

function isPrime(num) {
  if (num < 2) { return false;}
  
  for(let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

// console.log(isPrime(2)); // true
// console.log(isPrime(10)); // false
// console.log(isPrime(15485863)); // true
// console.log(isPrime(3548563)); // false


// sumofNPrimes:

function sumofNPrimes(n) {
  let numsToSum = [];
  let i = 
  while (numsToSum.length <= n) {

  }
  sum;
}

console.log(sumOfNPrimes(0));// 0
console.log(sumOfNPrimes(1)); // 2
console.log(sumOfNPrimes(4)); // 17