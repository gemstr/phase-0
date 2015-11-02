/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// Release 1: Create a Gradebook
// Create a variable gradebook and assign it the value of an empty object.

var gradebook = {}

// Release 2: Add Students to your Gradebook
// Make each student name in students a property of gradebook and assign each the value of a new object.
for (i = 0; i < students.length; i++){
  gradebook[students[i]] = {};
}

// Release 3: Add Test Scores
// Give each student property of gradebook its own testScores property and assign it the value of the respective students scores from scores.
for (i = 0; i < students.length; i++){
  gradebook[students[i]].testScores = scores[i];
}

// Release 4: Add New Scores
// Assign an addScore property to gradebook. Give it the value of a function that accepts name and scorearguments.
// Have addScore push the score to the value of the testScore property of the gradebook property that matches the value of the name argument.
// For example,

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
}

//     gradebook.addScore("Susan", 80) // would push the score 80 into the value of gradebook.Susan.testScores.
// Release 5: Create a Function to Calculate Averages
// Add the getAverage property to gradebook and assign it the value of a function. (This won't actually do anything just yet...)


gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};


// Release 6: Create a Function to Average Grades
// Create a new function average that accepts an array of integers and return the average of those integers.
var average = function(integers){
  var total = 0
  for (i = 0; i < integers.length; i++){
    total += integers[i];
  }
  return total / (integers.length);
}

// NOTE: getAverage and average are different functions.

// Release 7: Modify your getAverage Function
// Modify getAverage so that it accepts a name as a String (e.g., "Joseph") and returns that student's average score. Use the average function you just created.

// Release 8: Refactor
// Now go into the Docs to see if there are any methods you can simplify your code with. Also refactor for readability. Keep in mind, although one-line solutions look neat, they aren't necessarily the most efficient or "best" code.

// Make sure your code runs as expected!







// __________________________________________
// Refactored Solution

var gradebook = {};

for (i = 0; i < students.length; i++){
  gradebook[students[i]] = {};
};
for (i = 0; i < students.length; i++){
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};


// Release 6: Create a Function to Average Grades
// Create a new function average that accepts an array of integers and return the average of those integers.
var average = function(integers){
  var total = 0
  for (i = 0; i < integers.length; i++){
    total += integers[i];
  }
  return total / (integers.length);
}








// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
// I'm not sure entirely sure, is so we can keep everything DRY?
// How did you iterate over nested arrays in JavaScript?
// Using for loops
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We used the same basic JS methods.








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