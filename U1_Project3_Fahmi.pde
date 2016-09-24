PImage balloon;

boolean isReleased = false;
int Screen = 0;
void setup()
{
  fullScreen();
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
  text("Press SAPCAPEAWPEC to begin Poppin'", width/2, height/4, 1000, 1000);
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
  image(balloon, 100, 115);
}