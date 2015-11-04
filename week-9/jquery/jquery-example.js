// U3.W9:JQuery


// U3.W9:JQuery


// I worked on this challenge [by myself, with: jeremey broderick].
// This challenge took me [2] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
  //Add code here to select elements of the DOM
mascot = $('.mascot');
h1 = $('h1');
img = $('img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
firstH1 = $('body>h1');
firstH1.css('color', 'green');
firstH1.css('border', 'black solid 2px');
firstH1.css('visibility', 'visible');


//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
  e.preventDefault();
  $(this).attr('src', 'copperheads.png');
  $(this).css('border', 'black solid 1px');


  $(this).animate({
    borderWidth: '4px',
    height: '486',
    width: '820'
  }, 1000
  );
});

$('img').on('mouseleave', function(e){
  e.preventDefault();
  $(this).attr('src', 'dbc_logo.png');
});

//RELEASE 5: Experiment on your own
//We nested the animate inside the mouseover function, (see release 4) 


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//Reflection
//What is jQuery?
// jQuery is a javaScript library that is 
//What does jQuery do for you?
// jQuery is designed to make it easier to navigate a document, select DOM elements, create animation, handle events, and develop Ajax applications. 
//What did you learn about the DOM while working on this challenge?
// You can target specific DOM elements for creating interactive animation or other effects. 




