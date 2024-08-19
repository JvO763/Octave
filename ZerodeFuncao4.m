function ZerodeFuncao4
 
  
  g=9.81;
  d=0.2;
  Li=0.5;
  h=(0.5*0.5-(0.2*0.2))^(1/2);
  k=10000;
  m=(180+34); #TROCA O NUMEROUSP
  u=[0:0.001:h];
  
  P=m*g;
  
##  a=(m*g*d)^2;
##  b=(m*g*h)^2;
##  c=-2*(m^2)*(g^2)*h;
##  z=P^2;
##  E=(k*h)^2;
##  F=-2*k*k*h;
##  j=k*k;
  
  #func1(u)= a + b + c.*u + z.*u.*u - E.*u.*u - f.*u.*u.*u - j.*u.*u.*u.*u;
  z1=fzero('apl2',0);
  z1
  #hehe=a + b + c*z1 + z*z1*z1 - E*z1*z1 - F*z1*z1*z1 - j*z1*z1*z1*z1
  
  hehe2=(P*((d*d+(h-z1)*(h-z1))^(1/2))/(h-z1))-2*k*(((d*d+(h-z1)*(h-z1))^(1/2))-0.5)
  #printf('\n(%g) + (%g) + (%g)*x + (%g)*x*x - (%g)*x*x - (%g)*x*x*x - (%g)*x*x*x*x', a, b, c, z, e, F, j)
  
  
  
  %Keq=P./((d^2.-(h.-u).^2).^(1/2).-Li)
  Keq2=k.*(((h.-u).^2).*((d.^2)+((h.-u).^2)).^(3/2).-(d.^2).*(h.-(((h.-u).^2).+d.^2).^(1/2)).*((d.^2)+(h.-u).^2))./((d.^2)+(h.-u).^2).^(5/2);
  
  
  figure(1);
  
  img1=plot(u, Keq2);

  set(img1,'LineWidth',2,'Color','r');
  grid on;
  axis([0 h]);
  xlabel('Deslocamento'); ylabel('Coeficiente de Rigidez Efetiva');
 
  KnoEqEst=k.*(((h.-z1).^2).*((d.^2)+((h.-z1).^2)).^(3/2).-(d.^2).*(h.-(((h.-z1).^2).+d.^2).^(1/2)).*((d.^2)+(h.-z1).^2))./((d.^2)+(h.-z1).^2).^(5/2);
  
  KnoEqEst*2*z1
  P
  z1
  Keq2