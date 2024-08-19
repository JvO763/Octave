function dydt=apl3(t,y,opt,P)
   m = P(1); c = P(2);
   k = P(3); f = P(4);
   dydt = [y(2); (f*sin(t) - c*y(2) - k*y(1))/m];
   P(3)