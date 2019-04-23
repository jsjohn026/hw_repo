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
  array.array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      newArray.push(el);
    }
  });
  return newArray;
}

// isPrime:

// sumofNPrimes: