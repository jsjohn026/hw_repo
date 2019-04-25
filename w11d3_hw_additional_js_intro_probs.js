// Additional JS Intro Problems:

// function titleize(names, printCallback) {
//   let titleized = [];
//   names.forEach(function(name) {
//     let capitalized = name.charAt(0).toUpperCase() + name.slice(1).toLowerCase();
//     let titled = `Mx. ${capitalized} Jingleheimer Schmidt`;
//     titleized.push(titled);
//   });
//   printCallback(titleized); 
// };

function titleize(names, printCallback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  printCallback(titleized);
}

function printCallback(titleized) {
  titleized.forEach(title => console.log(title));
};

// console.log(titleize(["Mary", "Brian", "Leo"], printCallback));

// Phase II: Constructors, Prototypes, and this:

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  let trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${trick}!`);
};

// Elephant {
//   name: 'Dumbo',
//     height: 120,
//       tricks:
//   ['painting pictures',
//     'spraying water for a slip and slide',
//     'playing the cello']
// }
// let dumbo = new Elephant("Dumbo", 108, ["painting pictures", "spraying water for a slip and slide"]);
// let bey = new Elephant("Beyonce", 178, ["shaking her butt", "singing and dancing in front of millions of people"]);
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
};

// Elephant.paradeHelper(micah);
// Elephant.paradeHelper();
herd.forEach(Elephant.paradeHelper); //passed in without invoking means it is passed in as a function. This is what forEach. 
  // invoking it passes the return value.