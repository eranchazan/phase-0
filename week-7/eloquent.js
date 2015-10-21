// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
 var first_name = "eran"; 
 var last_name = "chazan"; 
 var full_name = first_name + last_name;
console.log(full_name);

 var favoriteFood = prompt("What is your favorite food?", " ");
 alert("Really?!" + (favoriteFood) + " is my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
 for (var hash = "#"; hash.length <= 7; hash += "#")
  console.log(hash);


// Functions

function minimum(int_1, int_2) {
    if (int_1 < int_2)
      return int_1;
    else return int_2;
}
console.log(minimum(1,2));



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "eran chazan",
	age: 27,
	3_favorite_foods: ["pizza","hamgurger","panini"]
	quirk: "I love maps"
}
//Reflection
//What are the biggest similarities and differences between JavaScript and Ruby? The biggest similarities is that both languages use objects, properties as their way of organzing code. Both have conditional operators, and both use functions with local and glboba scope to modulate code. They are differnet in synatx, with js needing semicolons to close out statements, while ruby is much more human readable. Both have arrays, with its corresponding methods like .push and .pop. .Flatten is ruby specfic while .join in the js equivalent.
//Was some of your Ruby knowledge solidified by learning another language? If so, which concepts? My knowledge of how array elements are selected, how conditionals are set up, how variables are declared, and how scope is created within and outside of methods. 
//How do you feel about diving into JavaScript after reading these chapters? Yes, I have a much better graph on js now, ready to go!
