function f=apl1(u)
  
  g=9.81;
  d=0.2;
  Li=0.5;
  h=(0.5*0.5-(0.2*0.2))^(1/2);
  k=10000;
  m=(180+34); #TROCA O NUMEROUSP
  
  P=m*g;
  
  a=(m*g*d)^2;
  b=(m*g*h)^2;
  c=-2*(m^2)*(g^2)*h;
  z=P^2;
  E=(k*h)^2;
  F=-2*k*k*h;
  j=k*k;
  
  f=a + b + c*u + z*u*u - E*u*u - F*u*u*u - j*u*u*u*u;