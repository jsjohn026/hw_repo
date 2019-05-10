// Phase I: JS Fundamentals

// madLib:
// Function Style Invocation
// function madLib(verb, adj, noun) {
//   return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
// }

// Fat Arrow Invocation
const madLib = (verb, adj, noun) => {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

// madLib('make', 'best', 'guac'); // "We shall MAKE the BEST GUAC."
// _________________________________________________

// isSubstring:
// function isSubstring(searchString, subString) {
//   return searchString.includes(subString);
// }

// Fat Arrow Invocation
const isSubstring = (searchString, subString) => searchString.includes(subString);

// console.log(isSubstring("time to program", "time")); // true
// console.log(isSubstring("Jump for joy", "joys")); // false
// _________________________________________________

// fizzBuzz:

// function fizzBuzz(arr) {
//   const magicArr = [];

//   arr.forEach(el => {
//     if (el % 3 === 0 ^ el % 5 === 0) { // XOR is true only if one is true
//       magicArr.push(el);
//     }
//   });
//   return magicArr;
// }

// Fat arrow style:
const fizzBuzz = (arr) => {
  const magicArr = [];

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] % 3 === 0 ^ arr[i] % 5 === 0) { // XOR is true only if one is true
      magicArr.push(arr[i]);
    }
  }
  return magicArr;
}

// console.log(fizzBuzz([3, 4, 25, 8, 9, 15])); // [3, 25, 9]
// ________________________________________________

//  isPrime:
// function isPrime(n) {
//   if (n < 2) {return false;}

//   for (let i = 2; i < n; i++) {
//     if (n % i === 0) {
//       return false;
//     }
//   }
//   return true;
// }

// Fat Arrow style:
const isPrime = (n) => {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

// console.log(isPrime(2)); // true
// console.log(isPrime(10));  // false
// console.log(isPrime(15485863));  // true
// console.log(isPrime(3548563));  // false

// function sumOfNPrimes(n) {
//   const primes = firstNPrimes(n);
//   let sum = 0;

//   for (let i = 0; i < primes.length; i++) {
//     sum += primes[i];
//   }
//   return sum;
// }

// function firstNPrimes(n) {
//   const primes = [];

//   for (let i = 2; primes.length < n; i++) {
//     if (isPrime(i)) {
//       primes.push(i);
//     }
//   }
//   return primes;
// }

function sumOfNPrimes(n) {
  let sum = 0;
  let primesCount = 0;
  let i = 2;
  while (primesCount < n) {
    if (isPrime(i)) {
      sum += i;
      primesCount += 1;
    }
    i++;
  }

  return sum;
}
// practice writing while loops

// console.log(firstNPrimes(0)); // []
// console.log(firstNPrimes(1)); // [2]
// console.log(firstNPrimes(4)); // [2, 3, 5, 7]

console.log(sumOfNPrimes(0)); // 0
console.log(sumOfNPrimes(1)); // 2
console.log(sumOfNPrimes(4)); // 17