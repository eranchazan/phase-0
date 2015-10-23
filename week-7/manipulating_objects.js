// Manipulating JavaScript Objects

// I worked on this challenge: [by myself]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 125,
  hairColor: "brown",
  spouse: "Adam",
  var children: { 
    name: "Carson",
    name: "Carter",
    name: "Colton"
  } 
}
// __________________________________________
// Write your code below.
var adam = {
    name: "Adam",
    spouse: terah,
};

terah.spouse = adam,
terah.weight = 125,
terah.eyeColor = undefined,

terah.children = {};
terah.children.carson = {name: "Carson"};
terah.children.carter = {name: "Carter"};
terah.children.colton = {name: "Colton"};

adam.children = terah.children;

console.log(terah);
//__________________________________________
// Reflection: Use the reflection guidelines
//What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// I had trouble asssigning a property to a object inside an object. I wasn't sure what the syntax was, but figured out that is is similar to string chaining in Ruby. I did the terah_object.children_object.carson_object is equal to a object literal notations with a key and value inside curly braces.   
//How difficult was it to add and delete properties outside of the object itself?
// To add objects is easy, you just do object.property = ... To remove a property I just set it to undefined. 
//What did you learn about manipulating objects in this challenge?
// I learned how to add not not add, how to put objects inside other objects, and how to assign properties of one objects to equal that of another. 
//
//
//
//


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah) 