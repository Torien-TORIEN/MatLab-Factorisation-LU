function[x]=descent(A,b)
%resoudre un systeme triangulaire Ax=b par la methode de descente triangulaire”
n=size(A,1);   %Taille de A
x=zeros(n,1);  %Matrice de 1 colonne et n lignes
  for i=1:n    %boucle pour déterminer les coef de X
    S=0;
    for j=1:i-1
      S+=A(i,j)*x(j);%la somme de Aij*xj de j=1 jusqu'à i-1
    end
    x(i)=(b(i)-S)/A(i,i);% xj
  end
end