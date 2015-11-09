// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Chris ].


// Add your JavaScript calls to this page:

// Release 0:
var release0 = document.getElementById("release-0");
release0.className = "done";


// Release 1:
var release1 = document.getElementById("release-1");
release1.style.display = "none";



// Release 2:
var release2 = document.getElementsByTagName("h1")[0];
release2.innerHTML = "I completed release 2.";



// Release 3:
var release3 = document.getElementById("release-3");
release3.style.backgroundColor = "#955251";



// Release 4:
var release4 = document.getElementsByClassName("release-4");
for (i = 0; i < release4.length; i++) {
  release4[i].style.fontSize = "2em";
};



// Release 5:
var release5 = document.getElementById("hidden");
document.body.appendChild(release5.content.cloneNode(true));

//reflection
//What did you learn about the DOM?
//That all the elements can be stored variables and be accessed and modified.

//What are some useful methods to use to manipulate the DOM?
//