// Mission Description:
// Overall mission: Collect the treasure and move to the next level and possibly face dragon
// Goals:Avoid the Dragon if possible, collect the treasure
// Characters: Player, Dragon
// Objects:Player(position, health, amount of gold, sword), Dragon(health, gold)
// Functions:moveUp, moveDown, moveForward, moveBack, attack

// Pseudocode
//Declare a 'player' object that will have properties as position and success
//Add different methods to 'player' to make it move up, down, forward and backward, attack
//Declare a 'dragon' object and give it a random position
//Move the player, and also assign another random position to Dragon
//Check where player is with respect to the dragon and gold
//If its the same position as gold, success! If the player position is same as dragon,
//Kill the dragon with attack() and steal gold.


// Solution
var player = {
  posX: 0,
  posY: 0,
  gold: 0,
  weapon: ["sword", 100],
  success: false,


move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    player.posX -=10;
  }
  else if(direction === 'up'){
    player.posY += 10;
  }
  else if(direction === 'down'){
    player.posY -=10;
  }
  //when player moves, dragon moves too
  dragon.posX = Math.floor((Math.random()*100)+1);
  dragon.posY = Math.floor((Math.random()*100)+1);
  console.log("Dragon's position is " + dragon.posX + "," + dragon.posY);

  //Display where player is
  console.log("Player's position is " + player.posX + "," + player.posY);

  //After every move, check if the player is near the dragon or the gold
  if(player.posX === dragon.posX && player.posY === dragon.posY){
    console.log("You've come face to face with the dragon! Attack!");
    player.attack();
  }

  else if(player.posX === gold.posX && player.posY === gold.posY){
    player.success = true;
    player.gold += 100;
    console.log("You reached the gold, you win!!");
  }
}, //closer of the move function

attack: function() {
  if (player.posX !== dragon.posX && player.posY !== dragon.posY){
    console.log("You gotta find the dragon first!!");
  }
  else {
    dragon.health -= 15;
    console.log("-15 damage! Dragon health: " + dragon.health);
    if (dragon.health > 100){
      console.log("The Dragon is still alive! Keep fighting!");
    }
    else if (dragon.health < 0) {
      console.log("Victory! You've slayed the Dragon!");
      sword.sharpness -= 10;
      console.log("Gold for you!: +" + dragon.gold);
      dragon.gold -= 50;
      player.gold += 50;
      console.log("Now to find the rest of the gold!");
    }
  }
}
};  //end of player 1

var gold = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};

var dragon = {
  health: 100,
  gold: 50,
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};



player.move('up');
player.move('forward');

Reflection:
What was the most difficult part of this challenge?
  The most difficult part of this challenge and JavaScript is getting used to the syntax and making sure I have all the properly placed semicolons and curly brackets.
What did you learn about creating objects and functions that interact with one another?
  - I learned that functions can change the properties of objects.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  -NA
How can you access and manipulate properties of objects?
 - object.property1 (to access property1 in object)