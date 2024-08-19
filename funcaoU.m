function y=funcaoU(x)
  
g=9.81;
d=0.2;
Li=0.5;
h=((0.5*0.5)-(0.2*0.2))^(1/2);
k=10000;
m=(180+45);
P=m*g;

 x=[-1:0.1:1];
 
y=(P.*((d*d.+(h.-x).*(h.-x)).^(1/2))./(h.-x)).-2.*k*(((d*d.+(h.-x).*(h.-x)).^(1/2)).-Li);

  img1 = plot(x,y);
  
  set(img1,'LineWidth',2,'Color','r');
  grid on;