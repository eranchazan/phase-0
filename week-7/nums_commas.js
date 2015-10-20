
// I worked on this challenge with: Eran Chazan.
 
/* Pseudocode

input: integer
output: comma sepatated number string
Steps:
create a function called separateComma with an integer argument
convert into a string and then reverse
iterate through the argument
create an if statement, if index % 4 == 0, insert a comma character. 
else leave as is
reverse back 
return 

*/

// Initial Solution
var seperateComma = function(integer) {
    var numArray = integer.toString().split('').reverse(); 
    var final = new Array(); 
    
    for (var i = 0; i < numArray.length; i++) {
      final.push(numArray[i]);
      if ((i+1) % 3 === 0 && i != numArray.length - 1)
          final.push(',');  
    }

    return final.reverse().join('');
}
// Refactored Solution

Helper help = new Helper();

var addCommas = function (numArray) {
    var final = new Array();    
    for (var i = 0; i < numArray.length; i++) {
      final.push(numArray[i]);
      if ((i+1) % 3 === 0 && i != numArray.length - 1)
          final.push(',');  
    }
    
    return final;
}

var seperateComma = function(number) {
    return addCommas(integer.toString().split('').reverse()).reverse().join('');
}

// Your Own Tests (OPTIONAL)




// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Writing in Javascript was a bit difficult due to the new syntax rules that I've only been exposed to to in the last 48 hours. I approached it the same way as Ruby, except having to switch funtions used.

//What did you learn about iterating over arrays in JavaScript?
// While Ruby has a bunch of iterating over array methods, there are only two in javascript, that is for(and for each) and while.  

//What was different about solving this problem in JavaScript?
// Solving this problem was different in creating new elements--all had to have 'var' in front of them. There is no bang operator in javascript, therefore we had to declare a new array to push the changes to.  

//What built-in methods did you find to incorporate in your refactored solution?
// I used .split, .reverse, .push , .length 
//