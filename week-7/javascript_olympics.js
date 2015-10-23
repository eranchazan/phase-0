// JavaScript Olympics

// I paired [by myself, with: Paul G.] on this challenge.

// This challenge took me [4] hours.

var athlete_one = {name: 'sarah', event: 'Ladies singles'};
var athlete_two = {name: 'eran', event: 'hockey' };
var athletes = [ athlete_one, athlete_two ]
// console.log(athletes[0].name);

for (var i in athletes){
  athletes[i].win = athletes[i].name + ' won the ' + athletes[i].event
//   console.log(athletes[i].win)
}

// var string = "hello"
function reverse(string) {
  return string.split("").reverse().join("");
}


function isEven(integer) {
  return integer % 2 === 0
}

var filtered = [1,2,3,4,5,6,7,8,9].filter(isEven);
console.log(filtered);

function Athlete(names, age, sport, quote)
this.names = name
this.sport = sport
this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
// -> true
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
//What JavaScript knowledge did you solidify in this challenge?
//I solidified how to create an object, how to pass multiple objects into an array. How to acess the value of a 
// of an array inside another array, and how to iterate over an array with a for loop.  
//What are constructor functions?
// A constructor function starts with a function keyword, followed by the name of the function, followed by the arguments
// in parentheses. The constructor object has its properties and methods defined with the keyword 'this' in front of it. 
// All properties and methods have their values defined after an equal sign. You need to instantiate the object first. 
// You use a object constructor when you want create object types, this is objects all objects woith the same boiler plate properties.  
//How are constructors different from Ruby classes (in your research)?
//  object.create() or a constructor function are used to create objects looking like something similar to what Ruby calls an instance of a class. In fact I believe there are no classes in javascript because it's not a class-based language even if it is object oriented like Ruby. In one hand, when you use object literal syntax you are always creating in-memory objects. In the other hand when you use a constructor, you are not actually initializing an object. Yes, constructors are objects, but only in that they are all prototypes of the Function object in core JavaScript. Keep this in mind when you're creating large scripts because you may be better off using constructors, and initializing objects only when needed. Finally, instantiated objects can work independently of other instances of this objects which is not the case with objects made out of literal functions














