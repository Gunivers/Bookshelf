float negate = float(x < 0);
  x = abs(x);
  float ret = -0.0187293;
  ret *= x;
  ret += 0.0742610;
  ret *= x;
  ret -= 0.2121144;
  ret *= x;
  ret += 1.5707288;

  ret = 3.14159265358979*0.5 - sqrt(1.0 - x)*ret;  0,523644947
  return ret - 2 * negate * ret; 1,57093484
