# Lesson 2
In this lesson you will program most of the behaviours of the ball. Firstly you will learn how to make it move. Then we will make the ball bounce off the top and bottom of the field. Lastly we will try to detect when a goal has been scored, reset the ball to start a new set and write the score to the screen. 

## Lesson 2_0
To make the ball we have to know it's possition and be able to update it. To do this we have to add variables, which we will use to draw the ball. Add two variables of the type ´float´ to your code, one for the x-value and one for the y-value, and give them appropriate names. 

Now that we have variables containing the position of the ball we will now make the ball move by adding or subtracting from those variables. To do this we will need another set of variables to hold in which direction we will influence the ball. 

Now that we have all 4 variables in our code it is time to update the x and y variables of the ball with the variables for direction. Do this in draw. 

## Lesson 2_1
Now that we are able to make the ball move we'll take all the lines of code related to doing that ***and*** those related to drawing the ball and move all of those inside a function. We'll call the function ´moveAndDrawBall´ you can name it whatever makes sense to you. 

## Lesson 2_2
You'll notice that the ball will move outside the screen and never come back, which is not very desireable when trying to play pong. To fix some of this behaviour we will make the ball bounce off the top and bottom of the field. 

To do this you will have to add two if-sentences: one to check whether the ball is above the top of the field and one to check whether it's below the bottom of the field. 

Now that we have detected collision with the top and bottom boundary of the field it's time to make the ball go in the opposite direction. Recall the variable you added earlier that controlls the direction of the ball. To make the ball change direction you will have to 'reverse' the variable that controls the movement on the y-axis. This means that if that variable contains a positive number (say 5) you want to make this number negate (-5) adn the same the other way around. The easiest way to accomplish this is simply to multiple the variable with ´-1´.   

## Lesson 2_3
Detect when goal has been scored, reset the ball, update a score variable and draw the score to the screen.