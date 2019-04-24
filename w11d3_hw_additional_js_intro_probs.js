// Additional JS Intro Problems:

// function titleize(names, printCallback) {
//   let titleized = [];
//   names.forEach(function(name) {
//     let capitalized = name.charAt(0).toUpperCase + name.slice(1).toLowerCase;
//     let titled = `Mx. ${capitalized} Jingleheimer Schmidt`;
//     titleized.push(titled);
//   });
//   return titleized;
// };

function titleize(names, printCallback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  printCallback(titleized);
}

function printCallback(titleized) {
  titleized.forEach(title => console.log(title));
};

console.log(titleize(["Mary", "Brian", "Leo"], printCallback));

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
  console.log(`${this.name} is ${trick}`);
};

