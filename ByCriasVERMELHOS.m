function ByCriasVERMELHOS
  
  V0=(10+0.1*34);
  
  Adx=ones(1,200);
  
  for s=[0:0.1:20];
    
    desloc=round(s.*10);
   
    Ads(desloc.+1)=quad(inline(' -0.01*x.*x + 4 ', 'x'), 0,s);
    Vf(desloc.+1)=((Ads(desloc.+1)+((V0)^2)/2)*2)^(1/2);
    an(desloc.+1)=Vf(desloc.+1)*Vf(desloc.+1)/100; 
    at(desloc.+1)=(4-0.01*s.*s);
    a(desloc.+1)=(an(desloc.+1).*an(desloc.+1).+at(desloc.+1).*at(desloc.+1)).^(1/2);
    
  endfor
  
  Ads(200);
  Vf;
  an(200);
  at(200);
  a
  s=[0:0.1:20];
  
  figure(1);
  img1=plot(s, Vf);
  set(img1,'LineWidth',2,'Color','r');
  grid on;
  axis([0 20 V0 Vf(200)]);
  xlabel('Deslocamento (m)'); ylabel('Velocidade (m/s)');
  printf('Depois de percorrer 20 metros, o veículo atinge %g metros por segundo \n',Vf(200))
  
  figure(2);
  img2=plot(s, a);
  set(img2,'LineWidth',2,'Color','r');
  grid on;
  axis([0 20 2.5 4.5]);
  xlabel('Deslocamento (m)'); ylabel('Aceleração (m/s)');
  printf('Depois de percorrer 20 metros, o veículo atinge %g metros por segundo ao quadrado\n',a(200))
  
  %FALTA ULTIMA PARTE 
  