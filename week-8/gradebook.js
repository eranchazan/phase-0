
//Gradebook from Names and Scores
//I worked on this challenge [by myself, with: Noah Heinrich]
//This challenge took me [3] hours.
//You will work with the following two variables.  The first, students, holds the names of four students.
//The second, scores, holds groups of test scores.  The relative positions of elements within the two
//variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
//Do not alter the students and scores code.


var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



var gradebook = {};

for (var i=0; i<students.length; i++){
  gradebook[students[i]] = new Object;
  gradebook[students[i]].testScores=scores[i];
}


gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  gradebook.average(gradebook[name].testScores);
}

gradebook.average = function(integers){
  var total = 0;
  for (i=0; i<integers.length; i++){
  total += integers[i];
  }
  total=total/integers.length;
  console.log(total)
}
console.log(gradebook)


// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i=0; i<students.length; i++){
  gradebook[students[i]] = new Object;
  gradebook[students[i]].testScores=scores[i];
}


gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  gradebook.average(gradebook[name].testScores);
}

gradebook.average = function(integers){
  var total = 0;
  for (i=0; i<integers.length; i++){
  total += integers[i];
  }
  total=total/integers.length;
  console.log(total)
}
console.log(gradebook)

// __________________________________________
// Reflect
//What did you learn about adding functions to objects?
//I learned that you can easily assign properties to objects, and have those properties be the the calculation results of another function altogether.  
//How did you iterate over nested arrays in JavaScript?
// To iterate over nested arrays you use the for loop and bracket notation with an iterator. It is fairly straight forward and similar to iterating over an array with integer or string values. In JS the method of choice is the for loop to iterate.  
//Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//There weren't many new methods that we were able to  incorporate. Our code had very few lines of code to begin with. The only method we used was the .push method. 
 
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)