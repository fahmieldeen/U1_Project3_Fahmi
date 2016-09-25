/*
This is a small game I made where your goal is to pop all the balloons on the screen. 
I used arrays so that the 100 balloons would generate at random x and y values of the 
screen. I feel like I could really build up on this game by adding sounds, a score counter
and even different types where you pop different things! 
*/

PImage balloon; 
int x;
int y;

//data types for the arrays 
float circleX[];
float circleY[];
int numballoons = 100;

//for the different screens
boolean isReleased = false;
int Screen = 0;

void setup()
{
  fullScreen();
  balloon = loadImage("balloon.png"); //setting the image when i say balloon 
  circleX = new float[numballoons]; 
  circleY = new float[numballoons];
  for (int i=0; i<numballoons; i++) //setting forloops and arrays for the rest of the code
  {
    circleX[i] = (int)random(0, width); //randomly place the balloons from 0 to width(1440)
    circleY[i] = (int)random(0, height);
  }
}

void draw()
{
  background(0);
  if (Screen == 0) 
  {
    StartScreen(); //function for the start screen
  }
  if (Screen == 1)
  {
    Balloons(); // game screen
  }
  if (mousePressed) // for the collision of the point with image
  {
    x = mouseX;
    y = mouseY;
  }
}

void keyReleased()
{
  isReleased = true; // for the start screen 
}

void StartScreen()
{
  text("Press Space to begin Poppin'", width/2, height/2, 1000, 1000);
  if ( isReleased )
  {
    if ( key == ' ' )
    {
      Screen = 1;
    }
    isReleased = false;
  }
}

void Balloons()
/*
This is the function of which controls the game itself. The forloops sets it so that 
only 100 balloons will spawn and each will have different x and y coordinates as variables
and therefore placing them in random places on the screen. 
*/
{
  for (int i=0; i<numballoons; i++)
  {
    image(balloon, circleX[i], circleY[i], 100, 115);

  if (mousePressed && x > circleX[i] && x < circleX[i] + 115 && y > circleY[i] && y < circleY[i] + 100); 
  {
    balloon = loadImage("pop.png");
  }
}
}