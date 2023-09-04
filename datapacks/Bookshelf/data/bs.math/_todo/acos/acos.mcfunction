


acos(float x) {
  float negate = float(x < 0); -1
  x = abs(x); 0.5
  float ret = -0.0187293;
  ret = ret * x; -0,00936465
  ret = ret + 0.0742610; 0,06489635
  ret = ret * x; 0,032448175
  ret = ret - 0.2121144; -0,179666225
  ret = ret * x; -0,0898331125
  ret = ret + 1.5707288; 1,48089569
  ret = ret * sqrt(1.0-x); 1,04715138
  ret = ret - 2 * negate * ret; 3,14145414
  return negate * 3.14159265358979 + ret;
}
