public class Avci
{

  float X0, X1, Y0, Y1, r0, r1;
  float hizX = 0;
  float hizY = 0;
  float hiz = 0;


  Avci(float X_, float Y_, float r_)
  {
    X1 = X_;
    Y1 = Y_;
    r1 = r_;
  }

  Avci(float X_, float Y_, float r_, float v_) //av
  {
    X0 = X_;
    Y0 = Y_;
    r0 = r_;
    hiz =v_;
  }

  void yukari()
  {
    //if (Y>width-r)
    //{
    //Y = r;
    //} else if (Y < r)
    //{
    // Y = width - r;
    //} else
    //{
    Y0 = Y0 - 5;
    if (Y0 > width) {
      Y0 = width;
    }
    if (Y0 <= 0) {
      Y0 = 0;
    }
    Y1 = Y1 - 5;
    if (Y1 > width) {
      Y1 = width;
    }
    if (Y1 <= 0) {
      Y1 = 0;
    }

    println("width yukarı :", width);

    //}
  }

  void asagi()
  {
    //if (Y>width)
    //{
    //  Y = 0;
    //} else 
    //{
    Y0 = Y0 + 5;
    if (Y0 > width) {
      Y0 = width;
    }
    if (Y0 <= 0) {
      Y0 = 0;
    }
    Y1 = Y1 + 5;
    if (Y1 > width) {
      Y1 = width;
    }
    if (Y1 <= 0) {
      Y1 = 0;
    }
    println("width asaği:", width);
    //}
  }

  void sag()
  {
    X0 = X0 + 5;
    if (X0 > height) {
      X0 = height;
    }
    if (X0 <= 0) {
      X0 = 0;
    }
    X1 = X1 + 5;
    if (X1 > height) {
      X1 = height;
    }
    if (X1 <= 0) {
      X1 = 0;
    }
    println("height sağ :", height);
  }

  void sol()
  {
    //if (X>height)
    //{
    //  X = r;
    //} else if (X < r)
    //{
    //  X = width - r;
    //} else
    //{
    X0 = X0 - 5;
    if (X0 > height) {
      X0 = height;
    }
    if (X0 <= 0) {
      X0 = 0;
    }
    X1 = X1 - 5;
    if (X1 > height) {
      X1 = height;
    }
    if (X1 <= 0) {
      X1 = 0;
    }
    println("height sol :", height);

    //}
  }

  void rel()
  {
    X0 = X0;
    X1 = X1;
    Y0 = Y0;
    Y1 = Y1;
  }
  void randomhareket()
  {
    X0 = X0 + int(random(- 0.5 * hiz, 0.5 * hiz));
    Y0 = Y0 + int(random(- 0.5 * hiz, 0.5 * hiz));
  }

  void sinir()
  {
    if ( X1 > width - r1)
    {
      X1 = width - r1;
      //hizX *= -1;
    } else if (X1 < r1)
    {
      X1 = r1;
      //hizX *= -1;
    } else if (Y1 > height - r1)
    {
      Y1 = height - r1;
      //hizY *= -1;
    } else if (Y1 < r1)
    {
      Y1 = r1;
      //hizY *= -1;
    }
  }

  void av()
  {
    fill(255, 0, 0);
    ellipse(X0, Y0, r0, r0);
  }

  void avci()
  {
    fill(0);
    ellipse(X1, Y1, r1, r1);
  }

  public void coll()
  {
    float dx = X0 - X1;
    float dy = Y0 - Y1;
    float uzaklik = sqrt(dx * dx + dy * dy);
    float minD = int(r0 + r1);

    println("r0 :", r0, " r1 :", r1, "dx :", dx, " dy :", dy, "uzaklık :", uzaklik, " minD :", minD);


    if (uzaklik < minD)
    {
      color(255, 0, 0);
      ellipse(150, 150, 150, 150);
    }

    /* boolean hit = circleCircle(c1x,c1y,c1r, c2x,c2y,c2r);
     float dx = X0 - X1;
     float dy = Y0 - Y1;
     float uzaklik = sqrt(dx * dx + dy * dy);
     float minD = r0 + r1;
     if (uzaklik < minD)
     {
     color(255);
     rect(50,50,50,50);
     float aci = atan2(dy, dx);
     float hedefX0 = X0 + cos(aci) * minD;
     float hedefY0 = sin(aci) * minD;
     float ax = (hedefX0 - X0) * 0.05;
     float ay = (hedefY0 - Y0) * 0.05;
     
     hizX = hizX - ax;
     hizY = hizY - ay; */
  }
}
