// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Un Choi
// This challenge took me [4+] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

// function tally_er(votes) {  //takes in a ballot as object
//   for (var voter in votes) {
//    if (votes.hasOwnProperty(voter)) {
//       var office_tally = votes[voter];
//      }
//     for (var office in office_tally) {
//       if (voteCount[office].hasOwnProperty(office_tally[office]) {
//         voteCount[office][office_tally[office]] += 1;
//       }
//       else {
//         voteCount[office][office_tally[office]] = 1;
//       }


// };




// var tally_er = function(ballot) {
//   for (var electee in ballot){
//     if (ballot.hasOwnProperty(president)) {
//       voteCount.president.ballot[president] += 1;
//     } else if (ballot.hasOwnProperty(vicePresident)) {
//       voteCount.vicePresident.ballot[vicePresident] += 1;
//     } else if (ballot.hasOwnProperty(secretary)) {
//       voteCount.secretary.ballot[secretary] += 1;
//     } else if (ballot.hasOwnProperty(treasurer)){
//       voteCount.treasurer.ballot[treasurer] += 1;
//     }
//   }
// }

// for (var voters in votes){
//   tally_er(votes[voters]);
// }

// console.log(voteCount)



// for (var voter in votes) {
//   if (votes.hasOwnProperty(voter)){
//     var ballot = votes[voter];
//       for (var candidate in ballot) {
//         if (ballot.hasOwnProperty("president")){
//           voteCount.president[ballot[president]] += 1;

          // console.log(ballot[candidate]);
          //voteCount.president[ballot[candidate]] += 1
//         }
//       }
//   }
// }

// for (var voter in votes) {
//   if (votes.hasOwnProperty(voter)){
//     var ballot = votes[voter];
//       for (var candidate in ballot) {
//         if (ballot.hasOwnProperty(candidate)){
//           if (ballot[candidate] === "president"){
//             voteCount.president[ballot[candidate]] += 1;
//           }

//           // console.log(ballot[candidate]);
//           //voteCount.president[ballot[candidate]] += 1
//         }
//       }
//   }
// }

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Create a function that takes votes object
// Iterate through each object in the votes object
// Iterate through  each property for the name that it was voted for
// Increment the votes in the voteCount variable as each person is repeated

// Calculate who received most votes



// __________________________________________
// Initial Solution
function tallyer(ballot) {
  for (var voters in ballot){
    if (ballot.hasOwnProperty(voters)){
      if (ballot[voters['president']]){
        voteCount.president[votes[voters].president] += 1
      }
      if (ballot[voters['vicePresident']]){
        voteCount.vicePresident[votes[voters].vicePresident] += 1
      }
      if (ballot[voters['secretary']]){
        voteCount.secretary[votes[voters].secretary] += 1
      }
      if (ballot[voters['treasurer']]){
        voteCount.treasurer[votes[voters].treasurer] += 1
      }
    }
  }
}

// We can't seem to get past this part! We couldn't figure out why our tally function isnt working?




// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

What did you learn about iterating over nested objects in JavaScript?
We were unable to complete the challenge by the deadline, but are working on it still.
We will update it regardless when we are finished.
Were you able to find useful methods to help you with this?
What concepts were solidified in the process of working through this challenge?




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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)