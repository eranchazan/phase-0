// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Donald Trump will decide to fire a contestant based on  their political party or their score in the contestant challange. 
// Goals: The Trump objet will contain a function that will determine if contestant properties passes its test. if it does it will say, "congratulations, you are a true American to Donald." else "You're fired!" 
// Characters: 
//Donald Tump, a Contestant
// Objects: 
//Object1:trump 
//Object2: constestant
// Functions: 
// Function 1:fired function in the donald object: if contestant party is not "rebpublican" or score from the challenge is not above 75 then contestant is fired, else contestant is allowed to join the final stage of the competition. 
 // Function2: a function that asks the contestant what their GPS was in college. if range is below 70 group in one category, between 70 and 80 group it, 80 and 90 group it, 90 to 1000 group it. 
// Pseudocode 
//  Ask for your name in prompt. 
//  if no name, then say you're pathetics and your fired
//  if name, then ask in prompt for natioanlity.
//  if nationality is chinese, then hire on the spot.
//  else say its ok and ask your their college gpa
// if gpa over 80 say will consider.
// elsif 
//function contestant  (party, gpa, and nationality)
// this.party = party
// this.party = party
// 
// 
// function trump() 
// if ( === "Republian" || gpa.score > 3)
//		console.log("You are a great American!")
// else
//		console.log("You're fired!")
// Initial Code
// create an empty contestant object and give it a job property = to work for donald Trump:
var contestants = []
var anOtherContestant = {};
anOtherContestant.job = 
anOtherContestant.name = 
anOtherContestant.nationality = 
anOtherContestant.party = 
anOtherContestant.collegeGpa = 

window.onload = function what(){
document.getElementById("onestatus").innerHTML = anOtherContestant.job;
document.getElementById("onepartyz").innerHTML = anOtherContestant.party;
document.getElementById("onenationalityz").innerHTML = anOtherContestant.nationality;
document.getElementById("onenamez").innerHTML = anOtherContestant.name;
document.getElementById("onegpaz").innerHTML = anOtherContestant.collegeGpa;

};

console.log(anOtherContestant);
var contestantYou = {};


contestantYou.job = "Working for donald trump";
document.getElementById("status").innerHTML = contestantYou.job;
// create a property of this object called name based on the answer provided by the prompt (browser only)
contestantYou.name =  prompt("Hello, and Welcome to the Apprentace. Pleast provide you name.");
document.getElementById("namez").innerHTML = contestantYou.name;

if (contestantYou.name === null) {
  console.log('Please provide a valid name');
}

// create a property of this object called party based on the answer provided by the prompt (browser only)
contestantYou.party = prompt("Thanks! Pleast provide your party.");
document.getElementById("partyz").innerHTML = contestantYou.party;

if (contestantYou.party === null) {
  console.log('please provide a valid party');
}

// create a property of this object called collegeGpa based on the answer provided by the prompt (browser only)
contestantYou.collegeGpa = prompt("Thanks! Pleast provide your colleg G.P.A.");
if (contestantYou.collegeGpa === null) {
  console.log('I know its hard, but please provide your college GPA');
}
document.getElementById("gpaz").innerHTML = contestantYou.collegeGpa;

// create a property of this object called nationality based on the answer provided by the prompt (browser only)
contestantYou.nationality = prompt("Thanks! Pleast provide your nationality.");
if (contestantYou.nationality === null) {
  console.log('Come on, everyone has a nationality, choose one.');
};
document.getElementById("nationalityz").innerHTML = contestantYou.nationality;

// print the contestant object (and its properties of course) in the console.
console.log(contestantYou);


document.getElementById("status").innerHTML = contestantYou.job;

function trump(){
  if (contestantYou.nationality === "Chinese" || contestantYou.collegeGpa > 80) {
    console.log("I love your you! You're promoted.");
    contestantYou.job = "PROMOTED!";
    anOtherContestant.job = "Demoted"
    document.getElementById("status").innerHTML = contestantYou.job;
  }
  else {
    contestantYou.job = "FIRED!"
    anOtherContestant.job = "Promoted"
    console.log("I hate you! You're fired!");
    document.getElementById("status").innerHTML = contestantYou.job;
  };

}
trump();

console.log(contestantYou);




// Refactored Code
// create an empty contestant object and give it a job property = to work for donald Trump:
var contestants = []
var anOtherContestant = {};
anOtherContestant.job = "1"
anOtherContestant.namee = "2"
anOtherContestant.nationality = "3"
anOtherContestant.party = "4"
anOtherContestant.collegeGpa = "5"

window.onload = function what(){
document.getElementById("onestatus").innerHTML = anOtherContestant.job;
document.getElementById("onepartyz").innerHTML = anOtherContestant.party;
document.getElementById("onenationalityz").innerHTML = anOtherContestant.nationality;
document.getElementById("onenamez").innerHTML = anOtherContestant.namee;
document.getElementById("onegpaz").innerHTML = anOtherContestant.collegeGpa;

};

console.log(anOtherContestant);
var contestantYou = {};


contestantYou.job = "Working for donald trump";
document.getElementById("status").innerHTML = contestantYou.job;
// create a property of this object called namee (name is a reserved word) based on the answer provided by the prompt (browser only)
contestantYou.namee =  prompt("Hello, and Welcome to the Apprentace. Pleast provide your name.");
document.getElementById("namez").innerHTML = contestantYou.namee;

if (contestantYou.namee === null) {
  console.log('please provide a valid name.');
}

// create a property of this object called party based on the answer provided by the prompt (browser only)
contestantYou.party = prompt("Thanks! Please provide your party.");
document.getElementById("partyz").innerHTML = contestantYou.party;

if (contestantYou.party === null) {
  console.log('Come on you can do this, please provide the party you most associate yourself with');
}

// create a property of this object called collegeGpa based on the answer provided by the prompt (browser only)
contestantYou.collegeGpa = prompt("Thanks! Please provide your colleg G.P.A.");
if (contestantYou.collegeGpa === null) {
  console.log('I know it is hard, but please provide yout true GPA.');
}
document.getElementById("gpaz").innerHTML = contestantYou.collegeGpa;

// create a property of this object called nationality based on the answer provided by the prompt (browser only)
contestantYou.nationality = prompt("Thanks! Please provide your nationality.");
if (contestantYou.nationality === null) {
  console.log('Come on, everyone comes from somewhere, please provide a valid nationality');
};
document.getElementById("nationalityz").innerHTML = contestantYou.nationality;

// print the contestant object (and its properties of course) in the console.
console.log(contestantYou);


document.getElementById("status").innerHTML = contestantYou.job;

function trump(){
  if (contestantYou.nationality === "Chinese" || contestantYou.collegeGpa > 80) {
    console.log("I love your nationality! You're promoted.");
    contestantYou.job = "PROMOTED!";
    anOtherContestant.job = "Demoted"
    document.getElementById("status").innerHTML = contestantYou.job;
  }
  else {
    contestantYou.job = "FIRED!"
    anOtherContestant.job = "Promoted"
    console.log("I hate you! You're fired!");
    document.getElementById("status").innerHTML = contestantYou.job;
  };

}
trump();

console.log(contestantYou);

// Reflection
//What was the most difficult part of this challenge?
// The hardes part of this challenge was getting user input to pop up on the screen. I learned about the document.getElementById("status").innerHTML = ...; method. This take whatever goes after the equal sign to display on the screen. This required one to build an html page as well. 
//What did you learn about creating objects and functions that interact with one another?
// I learned that you need a variable to hold a function to access it in another function or if  you want to access a property you must precede it with the parent object name. 
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? I kind of jumped ahead of the material from this week and leared about the document.getElementById("element").innerHTML = object.property; This method  returns the element that has the ID attribute with the specified value. This method is one of the most common methods in the HTML DOM, and is used almost every time you want to manipulate, or get info from, an element on your document.
//How can you access and manipulate properties of objects?
//There are two ways to access properties of an obect.They are:1.)object.property 2.)object[property]
//
//
//
//
//