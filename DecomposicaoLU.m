function DecomposicaoLU(a, b) #A função deve receber duas matrizes, sendo a primeira n x n e a segunda n x 1
 
 printf('Vamos ver se o sistema admite solução única \n') 
 
 auxiliadora=1;
 
 n=size(a, 1);                                             #É necessário, primeiramente, sabermos o tamanho da matriz quadrada 'a'. Por isso, criamos 'n' contendo esse valor.
 DetA=det(a);                                              
 
 for(p=1:n)                                                #Para testar a unicidade da solução, basta sabermos o determinante das matrizes formadas pelas n primeiras linhas e colunas da matriz original.
      Blocos=a(1:p,1:p);
      Blocos;
      if(det(Blocos)==0);
        DetA=0;
      end
      DetA;
 endfor

 if(DetA==0);                                             #Checando a unicidade da solução.
  printf('O sistema não admite solução única \n')
  
 else(DetA!=0);
  printf('O sistema admite solução única \n')             #Se for única, podemos prosseguir.
  
  nul=zeros([n 1]);                                       #Criando uma matriz nula n x 1.
  anul=horzcat(a,nul);                                    #Concatenando a matriz a e a nul.
  MatrizGeral=horzcat(anul,b);                            #Concatenando a b agora.
  
  vet_aux=zeros([1 (n+2)]);                               #Criando uma matriz nula auxiliar 1 x n+2.
  
  for(j=1:n);
    maior=0;                                              #Variável responsável por salvar o módulo do maior número da coluna estudada, para poder comparar os valores da coluna.
    i_maior=1;                                            #Variável responsável por salvar a linha em que o maior número da coluna se encontra.
    for(i=j:n);
      
      if(abs(MatrizGeral(i,j))==maior);                   #Método de comparação para encontrar o maior valor da coluna.
        
        
        
        while(auxiliadora!=0)
         for(k=1:(n-j));
         
         
         
            if(MatrizGeral(i,j+k)>MatrizGeral(i_maior,j+k));
              
             maior=MatrizGeral(i,j);
             i_maior=i;
             auxiliadora=0;
            else(MatrizGeral(i,j+k)<MatrizGeral(i_maior,j+k));

             auxiliadora=0;
            end
         endfor
         auxiliadora=0;
        endwhile
        auxiliadora=1;
      elseif(abs(MatrizGeral(i,j))>maior);
        maior=MatrizGeral(i,j);
        i_maior=i;
      
      else;

      end
    endfor
    
    for(c=1:(n+2));
      vet_aux(1,c)=MatrizGeral(i_maior,c);                #Fazendo as trocas de linhas, para deixar a linha que contém o maior número da coluna em cima.
      MatrizGeral(i_maior,c)=MatrizGeral(j,c);
      MatrizGeral(j,c)=vet_aux(1,c);
      
    endfor
   
  endfor
  
  for(i=1:n);
    for(j=1:n);
    a(i,j)=MatrizGeral(i,j);                              #Colocando os nvos valores das matrizes a e b, após as trocas de ordem das linhas.
    b(i,1)=MatrizGeral(i,n+2);
    endfor
  endfor
       
  u=zeros([n n]);                                         #Criando uma matriz 'u' nxn nula.
  l=eye(n);                                               #Criando uma matriz 'l' nxn identidade.
  
  for (j=1:n);                                            #Criamos a primeira linha de 'u' separadamente, por ser essencial na deterinação das próximas linhas e também pela facilidade.
    u(1,j)=a(1,j);
  endfor
  
  for (i=2:n);                                            #Pelos mesmos motivos, fazemos para a primeira coluna de 'l'
    l(i,1)=a(i,1)/u(1,1);
  endfor
  
  for (i=1:n);                                            #For para correr as linhas.
    for (j=1:n);                                          #For para correr as colunas.
      somatorio=0;
      somatoriob=0;
        for (k=1:i-1)                                     #For para correr o k, da fórmula dos elementos de 'u'.
#          if(i<=j);                                         
            if(i==1);                                     #Caso o somatório for de k=1 a k=i-1 e i=1, o somatório não funcionaria, logo, zeramos o valor do mesmo nesse momento.
             somatorio = somatorio + 0;
            else(i!=1);
              somatorio = somatorio + l(i,k)*u(k,j);      #Fórmula do somatório pros elementos de 'u'.
            end
#          end
        endfor
        
        for (k=1:j-1);                                    #For para correr o k, da fórmula dos elementos de 'l'.
                                                              
          if(j==1);                                       #Caso o somatório for de k=1 a k=j-1 e j=1, o somatório não funcionaria, logo, zeramos o valor do mesmo nesse momento.
            somatoriob = somatoriob + 0;                      
          else(j!=1);
            somatoriob = somatoriob + l(i,k)*u(k,j);      #Fórmula do somatório pros elementos de 'l'.
          end
        endfor
        
        u(i,j)=a(i,j) - somatorio;                        #Fórmula geral para os elementos de 'u'.
        l(i,j)=( a(i,j) - somatoriob )/u(j,j);            #Fórmula geral para os elementos de 'l'.
      
          
    endfor
  endfor
  
  for(i=1:n);                                                 
    for(j=1:n);
   
      if(i>j);                                            #Como a equação dos elementos de 'u' valem apenas pros elementos que i<=j, então colocamos o valor de 0 para os elementos que i>j.
        u(i,j)=0;
      end
      
      if(i<j);                                            #Como a equação dos elementos de 'l' valem apenas pros elementos que j<i, então colocamos o valor de 0 para os elementos que j>i.
        l(i,j)=0;
      end
      
      if(i==j);                                                
        l(i,j)=1;
      end
      
   endfor
  endfor
  
  l*u;                                                    #Só pra confirmar o resultado.
 
  printf('\nA matriz a foi transformada em:\n ')
  a
  printf('\nA matriz b foi transformada em:\n ')
  b
  printf('\nA matriz a foi decomposta em duas matrizes, l:\n ')
  l
  printf('\nE u:\n ')
  u
  y=inv(l)*b;                                             #l*y=b
  x=inv(u)*y;                                             #u*x=y
  printf('\nA solução para o sistema é:\n ')
  x
end