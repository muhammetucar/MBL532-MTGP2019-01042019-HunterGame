//av
float c2x = 700;    
float c2y = 700;
float c2r = 50;

int  avSay = 10;
float yercekimi = 0.035;
float surtunme = -0.2;

Avci[] avlar = new Avci[avSay];
Avci a;

void setup()
{
  size(900, 900);
  noStroke();
  ellipseMode(CENTER);
  a = new Avci(50, 50, 50, 5);

  for (int i = 0; i < avSay; i++)
  {
    avlar[i] = new Avci( random(width), random(height), 50, i, avlar);
  }

}

void draw()
{
  background(225);
  for (Avci b : avlar)
  {
    b.goruntule();
    b.ilerle();
    b.zipla();
  }
  a.hareket();
  a.goruntule();
  a.titre();
  a.sinir();
  a.ilerle();
} 

void keyPressed() {
  a.setMove(keyCode, true);
}

void keyReleased() {
  a.setMove(keyCode, false);
}
