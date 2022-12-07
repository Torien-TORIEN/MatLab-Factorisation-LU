%resolution du systeme 3
n=9;
A=fillA(n); %Remplir la matrice A du système (3)
b=-1/n*ones(n,1); %Matrcice colonne dont tous les termes sont =-1/n
printf("\n1 cas1: bk=-1/n pour tout k\n")
x=solvlu(A,b);
disp(x);%pour afficher la solution x

for k=1:9 %(b) le composant de b ,bk=-1 et les autres sont nuls
  printf("\ncas%d: b%d=-1 et les autres nuls\n",k+1,k)
  c=zeros(n,1);  %matrice colonne nulle de taille n
  c(k)=-1;
  x1=solvlu(A,c);
  disp(x1); %pour afficher la solution x1

end
