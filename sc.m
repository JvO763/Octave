function f = sc % Arquivo sc.m 
  global p 
  x=[0:0.1:4];
  f = x.^2+x.*2; 
  
  figure(1);
  
  img1=plot(x,f);

  set(img1,'LineWidth',2,'Color','r');
  grid on;
  axis([0 h]);
  xlabel('Deslocamento'); ylabel('Coeficiente Elástico'); 