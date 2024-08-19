function testeode45
  
  N=34;

Tetai=0; Tetaf=2; dTeta=1/6;
[Tetav,Resultv] = ode45(@(Teta) (Teta^2), [Tetai:dTeta:Tetaf],[0]);
Resultv

