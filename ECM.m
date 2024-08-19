function ECM

Vetor_Dureza(1)=50.6 
Vetor_Dist(1)=1/16
Vetor_Dureza(2)=57.5 
Vetor_Dist(2)=2/16
Vetor_Dureza(3)=57.3 
Vetor_Dist(3)=3/16
Vetor_Dureza(4)=57.7 
Vetor_Dist(4)=4/16
Vetor_Dureza(5)=58.3 
Vetor_Dist(5)=5/16
Vetor_Dureza(6)=57.9 
Vetor_Dist(6)=6/16
Vetor_Dureza(7)=58.5 
Vetor_Dist(7)=7/16
Vetor_Dureza(8)=58.2 
Vetor_Dist(8)=8/16
Vetor_Dureza(9)=57.9 
Vetor_Dist(9)=9/16
Vetor_Dureza(10)=58.1 
Vetor_Dist(10)=10/16
Vetor_Dureza(11)=57.9 
Vetor_Dist(11)=11/16
Vetor_Dureza(12)=58.5 
Vetor_Dist(12)=12/16
Vetor_Dureza(13)=57.7 
Vetor_Dist(13)=13/16
Vetor_Dureza(14)=57.7 
Vetor_Dist(14)=14/16
Vetor_Dureza(15)=57.5 
Vetor_Dist(15)=15/16
Vetor_Dureza(16)=57.1 
Vetor_Dist(16)=16/16
Vetor_Dureza(17)=56.7 
Vetor_Dist(17)=1 + 1/8
Vetor_Dureza(18)=56.3 
Vetor_Dist(18)=1 + 2/8
Vetor_Dureza(19)=55.3 
Vetor_Dist(19)=1 + 3/8
Vetor_Dureza(20)=53.5 
Vetor_Dist(20)=1 + 4/8
Vetor_Dureza(21)=53 
Vetor_Dist(21)=1 + 5/8
Vetor_Dureza(22)=52.1 
Vetor_Dist(22)=1 + 6/8
Vetor_Dureza(23)=51.1 
Vetor_Dist(23)=1 + 7/8
Vetor_Dureza(24)=48.2 
Vetor_Dist(24)=1 + 8/8
Vetor_Dureza(25)=45.9 
Vetor_Dist(25)=2 + 1/4
Vetor_Dureza(26)=43.0 
Vetor_Dist(26)=2 + 2/4

  figure(1);
  img1=plot(Vetor_Dist, Vetor_Dureza, '-.r');
  grid on;
  xlabel('Distância (Polegadas)'); ylabel('Dureza (HRC)');
  hold on 