function sist1(A,b)
n=rank(A);%Da o posto da matriz A
fprintf("Posto da matriz A= %g \n",n);
m=rank([A b]);%Da o posto de [A:b]
fprintf("Posto da matriz [A:b]= %g \n",m);
if n==m & n==length(A(1,:))
disp("O sistema tem sol unica")
X2=pinv(A)*b;
disp(X2);
elseif n==m & n<length(A(1,:))
disp("O sistema tem infinitas sols")
disp("Usando divisao a esquerda uma solu\c c\~ao e")
X1=A\b;
disp(X1);
disp("Usando inversa generalizada uma solu\c c\~ao e")
X2=pinv(A)*b;
else
disp("O sistema nao tem sol")
disp("Usando divisao a esquerda uma aproximacao e")
X1=A\b;
disp(X1);
e1=b-A*X1;
J1=e1'*e1/2;
fprintf("Erro da divisao a esquerda = %f \n",J1)
disp("Usando inversa generalizada uma aproximacao e")
X2=pinv(A)*b;
disp(X2);
e2=b-A*X2;
e2t=e2';
J2=(e2t)*e2/2;
fprintf("Erro da inversa generalizada = %f \n",J2)
end