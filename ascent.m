function[x]=ascent(A,b)
%resoudre un systeme triangulaire superieure par la methode de remontee trianguleire 
  n=size(A,1);  %Taille
  x=zeros(n,1); %Matrice zéro de 1 colonne et n lignes
  for i=n:-1:1  %Boucle i de n à 1
    S=0;
    for j=i+1:n
      S+=A(i,j)*x(j); %S=? Aij*xj avec j=i+1 jusqu'à n 
     end
     x(i)=(b(i)-S)/A(i,i); %xi
   end
end