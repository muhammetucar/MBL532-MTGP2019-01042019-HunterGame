//ziplanin voidinde draw ellipse yok boolendaki gibi
//collisionlara pause, reset vb. koy
//çerçevede sıkıntı var
//sure, baslangic, bitis yok.
//yedikçe büyüyebilir, küçülebilir
//class extension, classları bağlama vb.
//swarm intelligence
//cellular automata

class Avci 
{

  boolean sol, sag, yukari, asagi;
  int x, y ;
  int d, v;

  float X, Y, r;
  float hizX = 0;
  float hizY = 0;
  int id;
  Avci[] digerleri;


  Avci(int xx, int yy, int dd, int vv) 
  {
    x = xx;
    y = yy;
    d = dd;
    v = vv;
  }

  Avci(float X_, float Y_, float r_, int id_, Avci[] digerleri_)
  {
    X = X_;
    Y = Y_;
    r = r_;
    id = id_;
    digerleri = digerleri_;
  }

  void goruntule() 
  {
    boolean hit = circleCircle(x, y, c2x, c2y, c2r);
    if (hit) 
    {
      fill(255, 150, 0);
    } else
    {
      fill(0, 150, 255);
    }
    ellipse(c2x, c2y, c2r, c2r); //av

    fill(255, 50, 0);
    ellipse(X, Y, r, r);
  }

  void ilerle()
  {
    hizY = hizY + yercekimi;
    hizX = hizX + yercekimi;
    X = X + hizX;
    Y = Y + hizY;

    if (X > width)
    {
      X = width - r;
      hizX = hizX * surtunme;
    } else if (X < 0)
    {
      X = r;
      hizX = hizX * surtunme;
    }

    if (Y > height)
    {
      Y = height - r;
      hizY = hizY * surtunme;
    } else if (Y < 0)
    {
      Y = r;
      hizY = hizY * surtunme;
    }
  } 

  void sinir()
  {
    if ( c2x > width - c2r)
    {
      c2x = width - c2r;
      //v *= -1;
    } else if (c2x < c2r)
    {
      c2x = c2r;
      //v *= -1;
    } else if (c2y > height - c2r)
    {
      c2y = height - c2r;
      //v *= -1;
    } else if (c2y < c2r)
    {
      c2y = c2r;
      //v *= -1;
    }
  }

  //Daire Carpismasi, Void altina yazilamiyor??

  boolean circleCircle(float x, float y, float c2x, float c2y, float c2r) 
  {

    float distX = x - c2x;
    float distY = y - c2y;
    float distance = sqrt( (distX*distX) + (distY*distY) );
    if (distance <= (d+c2r)/2) 
    {
      /*for (int i = id +1; i< avSay; i++)
       {
       float aci = atan2(distY, distX);
       float hedefX = x + cos(aci) * distance;
       float hedefY = sin(aci) * distance;
       float ax = (hedefX - digerleri[i].X) * 0.05;
       float ay = (hedefY - digerleri[i].Y) * 0.05;
       hizX = hizX - ax;
       hizY = hizY - ay; 
       } */
      fill(255, 150, 0);
      ellipse(x, y, d, d);

      return true;
    }
    fill(0);
    ellipse(x, y, d, d);

    return false;
  }

  void zipla()
  {
    for (int i = id +1; i< avSay; i++)
    {
      float dx = digerleri[i].X - X;
      float dy = digerleri[i].Y - Y;
      float uzaklik = sqrt(dx * dx + dy * dy);
      float minD = digerleri[i].r/2 + r/2;
      if (uzaklik < minD)
      {
        float aci = atan2(dy, dx);
        float hedefX = X + cos(aci) * minD;
        float hedefY = sin(aci) * minD;
        float ax = (hedefX - digerleri[i].X) * 0.05;
        float ay = (hedefY - digerleri[i].Y) * 0.05;

        hizX = hizX - ax;
        hizY = hizY - ay;
      }
    }
  }

  void titre()
  {
    float distX = x - c2x;
    float distY = y - c2y;
    float distance = sqrt( (distX*distX) + (distY*distY) );
    if (distance <= (d+c2r)/2)
    {
      keyPressed = false;
      fill(0, 150, 255);
    } else
    {
      c2x = c2x + int(random(- 5 * v, 5 * v));
      c2y = c2y + int(random(- 5 * v, 5 * v));
    }
  }

  void hareket() 
  {
    x = constrain(x + v*(int(sag) - int(sol)), d, width  - d);
    y = constrain(y + v*(int(asagi)  - int(yukari)), d, height - d);
  }

  boolean setMove(int k, boolean b) {
    switch (k) {
    case 'W':
    case UP:
      return yukari = b;

    case 'S':
    case DOWN:
      return asagi = b;

    case 'A':
    case LEFT:
      return sol = b;

    case 'D':
    case RIGHT:
      return sag = b;

    default:
      return b;
    }
  }
}
