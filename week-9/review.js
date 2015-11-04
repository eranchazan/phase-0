//PseudoCode
//CREATE A LIST
// set a variable to an empty javascript in object literal Notation
// ADD AN ITEM TO A LIST
// Add an item to a list using object[key]=value
//REMOVE AN ITEM FROM THE LIST
//use the delete method folowed by object[key]
//UPDATE QUANTITIES FOR ITEMS FROM THE LIST
// set the object[key]= new value
// PRINT THE LIST
//console log the list  

//Initial Solution
 /*

 var list = {}

 list.add_items = function(item, quantity) {
  list[item] = quantity;
   
};

list.remove_item = function(item) {
  delete list[item]
}
list.update_quantities = function(item, new_quantity) {
  list[item] = new_quantity; 
};


list.print = function(list) {
  console.log(list);
};
*/

//Refactored Solution 
var list = {}

 list.add_items = function(item, quantity) {
  list[item] = quantity;
   
};

list.remove_item = function(item) {
  delete list[item]
}
list.update_quantities = function(item, new_quantity) {
  list[item] = new_quantity; 
};


list.print = function(list) {
  console.log(list);
};

list.add_items("celery", 10);
list.add_items("steak", 2);
list.add_items("yogurt", 4);

list.remove_item("yogurt");

list.update_quantities("steak", 4);

list.print(list);



//Reflection
//What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidified my knowledge of how to access and manipulate values in an object. 
//What was the most difficult part of this challenge?
// The most diffcult part of the challenge was to rememeber how function syntax is like in javaScript
//Did an array or object make more sense to use and why?
// An object made more sense because the values of each key (the quantity of each grocery tiem)are going to be non-sequential integers. 




