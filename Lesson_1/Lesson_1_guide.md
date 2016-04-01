# Lesson 1
In this lesson you will learn to draw the playing field, the two paddles, the ball and write the score. All of these elements will be static and you will learn how to aggregate similar operations into a single function. You will also learn how to properly use variables in your code, so it will be scalable and easily changable for the future lessons.

## 1.0
Draw the field, the two paddles and the ball using the functions found under "2D Primitives" in the  [reference](https://processing.org/reference/). If you choose to use the rect() and ellipse() functions then you should take a look at the [rectMode()](https://processing.org/reference/rectMode_.html) and [ellipseMode()](https://processing.org/reference/ellipseMode_.html) functions and how they affect your code. We recommend setting both of these to "CENTER" for easier calculation later on but you are free to use whichever you want, just remember that it will be a bit harder to use our example code for reference. 

## 1.1
Now it's time to switch out all the numbers you used to draw the field, paddles and ball to variables. By doing this you will be able to move these elements around from other places in your code, which for obvious reasons will come in handy later on. It's not much fun playing a game where nothing moves.
This is also just a good habit to get into as it makes changing things in your code easier and the code more readable for other people.  

## 1.2
Now that we are drawing all our elements to the screen and using variables it's time to take all the code that has a similar goal and group it together in functions. By during this you will make your code even more readable and understandable, both for yourself and others. You will also avoid duplicating parts of your code since you can just call the function instead.