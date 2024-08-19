function ZerodeFuncao
 
  g=9.81;
  d=0.2;
  Li=0.5;
  h=(0.5*0.5-(0.2*0.2))^(1/2);
  k=10000;
  m=(180+34); #TROCA O NUMEROUSP
  
  P=m*g;
  
  y=(((((P+(2*Li)*k)/(2*k))^2)-d^2))^(1/2);
  u=h-y
  
  Uef=[0:0.001:h];
  Ke=-(-d*d-sin(-Uef.+h))./((-Uef.+h).*(-Uef.+h)+d*d)
  
  figure(1);
  
  img1=plot(Uef, Ke);

  set(img1,'LineWidth',2,'Color','r');
  grid on;
  axis([0 h]);
  xlabel('Deslocamento'); ylabel('Coeficiente Elástico'); 
  
  KnoEqEst=2.*k.*(h-u)./((d.^2.+(h-u).^2).^(1/2))
  