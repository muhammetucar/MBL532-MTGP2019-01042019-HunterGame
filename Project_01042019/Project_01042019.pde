int  topSayisi = 1;
float surtunme = -0.5;
Avci[] top = new Avci[topSayisi];
Avci z1;
//Carpisma z2;

void setup()
{
  size(600, 600);
  background(255);

  z1 = new Avci(350, 350, 50, 10);

  for (int i = 0; i < topSayisi; i++)
  {
    top[i] = new Avci(random(width), random(height), 50);
  }
}

void draw()
{
  background(255, 50);

  z1.av();
  //z1.randomhareket();
  //z1.sinir();

  for (Avci z : top)
  {
    z.avci();
  }
}

void keyPressed()
{
  for (Avci z : top)
  {

    z.avci();
    //z.sinir();

    if (key == CODED) 
    {
      if (keyCode == UP)
      {
        z.coll();
        z1.coll();
        z.yukari();
      }
      if (keyCode == DOWN)
      {
        z.coll();
        z1.coll();
        z.asagi();
      }
      if (keyCode == LEFT)
      {
        z.coll();
        z1.coll();
        z.sol();
      }
      if (keyCode == RIGHT)
      {
        z.coll();
        z1.coll();
        z.sag();
      }
    }
  }
}

void keyReleased()
{
}
