/*
public class Av
{

  float X0, Y0, r0;
  float hizX = 0;
  float hizY = 0;
  float hiz = 0;

  Av(int X_, int Y_)
  {
    X0 = X_;
    Y0 = Y_;
    r0 = 50;
    hiz =10;
  }

  void av()
  {
    fill(255, 0, 0);
    ellipse(X, Y, r0, r0);
  }

  void avci()
  {
    fill(0);
    ellipse(X, Y, r0, r0);
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
    //}
  }

  void sag()
  {
    X0 = X0 + 5;
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
    //}
  }

  void randomhareket()
  {
    X0 = X0 + int(random(- 2 * hiz, 2 * hiz));
    Y0 = Y0 + int(random(- 2 * hiz, 2 * hiz));
  }

  void sinir()
  {
    if ( X > width - r0)
    {
      X = width -r0;
      hizX *= -1;
    } else if (X < r)
    {
      X = r;
      hizX *= -1;
    } else if (Y > height - r)
    {
      Y = height -r;
      hizY *= -1;
    } else if (Y < r)
    {
      Y = r;
      hizY *= -1;
    }
  }
} 
*/
