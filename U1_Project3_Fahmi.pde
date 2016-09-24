PImage balloon;

float circleX[];
float circleY[];

int balloons = 100;

boolean isReleased = false;
int Screen = 0;
void setup()
{
  fullScreen();
  circleX = new float[balloons];
  circleY = new float[balloons];
  for (int i=0; i<balloons; i++)
  {
    circleX[i] = (int)random(0, width);
    circleY[i] = (int)random(0, height);
  }
  balloon = loadImage("balloon.png");
}

void draw()
{
  background(0);
  if (Screen == 0)
  {
    StartScreen();
  }
  if (Screen == 1)
  {
    BalloonPopping();   
  }
}

void keyReleased()
{
  isReleased = true;
}

void StartScreen()
{
  text("Press Space to begin Poppin'", width/2, height/4, 1000, 1000);
  if ( isReleased )
  {
    if ( key == ' ' )
    {
      Screen = 1;
    }
    isReleased = false;
  }
}

void BalloonPopping()
{
  for (int i=0; i<balloons; i++)
  image(balloon, circleX[i], circleY[i], 100, 115);
}