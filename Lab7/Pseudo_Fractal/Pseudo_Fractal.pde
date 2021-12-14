float step = 5;
float posx = 300;
float posy = 300;

void setup()
{
  size(600,600);
  background(0);
  stroke(255);
  frameRate(30); 
}
void draw()
{
  int checkx = int(random(2));
  int checky = int(random(2));
  step(checkx,checky);
}
void step(int x, int y)
{
  if(x == 0 && y == 0)
  {
    line(posx,posy,posx-step,posy-step);
    posx -= step;
    posy -= step;
    if(posx > 600 || posx<0 || posy > 600 || posy<0)
    {
      warp();
    }
  }
  if(x == 1 && y == 0)
  {
    line(posx,posy,posx+step,posy-step);
    posx += step;
    posy -= step;
    if(posx > 600 || posx<0 || posy > 600 || posy<0)
    {
      warp();
    }
  }
  if(x == 0 && y == 1)
  {
    line(posx,posy,posx-step,posy+step);
    posx -= step;
    posy += step;
    if(posx > 600 || posx<0 || posy > 600 || posy<0)
    {
      warp();
    }
  }
  if(x == 1 && y == 1)
  {
    line(posx,posy,posx+step,posy+step);
    posx += step;
    posy += step;
    if(posx > 600 || posx<0 || posy > 600 || posy<0)
    {
      warp();
    }
  }
}
void warp()
{
  posx = 300;
  posy = 300;
}
void mouseWheel(MouseEvent event)
{
  float e = event.getCount();
  step+= e;
}
void keyPressed()
{
  if(key ==' ')
  {
    int bgc = int(random(2));
    if(bgc == 0)
    {
      background(0);
      stroke(255);
      posx = 300;
      posy = 300;
    }
    if(bgc == 1)
    {
      background(255);
      stroke(0);
      posx = 300;
      posy = 300;
    }
  }
  if(key == BACKSPACE)
  {
    noLoop();
  }
  if(key == ENTER)
  {
    loop();
  }
}

//upscroll to lower distance per frame, downscroll to increase, space to clear and potentially change colour schemes, backspace to stop drawing for screenshotting purposes, enter to keep drawing.
