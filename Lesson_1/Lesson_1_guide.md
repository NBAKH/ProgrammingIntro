# Lesson 1
In this lesson you will learn to draw the playing field, the two paddles, the ball and write the score. All of these elements will be static and you will learn how to aggregate similar operations into a single function.

## 1.0
To get started you should draw all the basic elements of a game of pong. You need two paddles, a ball and a field. Be creative with the field and draw whatever you want. To make the sketch a bit prettier to look at you should also set a background color (be vary of the order of the code, the background function will draw over everything drawn before it). 
Write all this code inside the draw function. 

You can find most of the functions needed for this tasks under "2D Primitives" in the  [reference](https://processing.org/reference/). 

## 1.1
Now that we are drawing all our elements to the screen it's time to take all the code that has a similar goal and group it together in functions. We'll start by doing this with all the lines that contributes to drawing the field and put them all inside one function. You can call this function whatever makes sense to you, we called ours "drawField". Later we'll do the same for the paddles and the ball.

By during this you will make your code even more readable and understandable, both for yourself and others. You will also avoid duplicating parts of your code since you can just call the function instead.