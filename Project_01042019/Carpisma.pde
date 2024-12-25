/*
public class Carpisma
 {
 float X, Y, r;
 float hizX = 0;
 float hizY = 0;
 float hiz = 0;
 
 
 float c1x = X;
 float c2x = X;
 float c1y = Y;
 float c2y = Y; 

void carpisma()
{
  float dx = get(Av.X0) ;
  float dy = c1y - c2y;
  float uzaklik = sqrt(dx * dx + dy * dy);
  float minD = r/2 + r/2;
    if (uzaklik < minD)
  {
    float aci = atan2(dy, dx);
    float hedefX = X + cos(aci) * minD;
    float hedefY = sin(aci) * minD;
    float ax = (hedefX - X) * 0.05;
    float ay = (hedefY - Y) * 0.05;

    hizX = hizX - ax;
    hizY = hizY - ay;
  }
}
} 
*/
