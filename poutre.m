%resolution du systeme 3
n=9;
A=fillA(n);%remplir la matrice A
hold on
b=-1/n*ones(n,1); %(a)
x=solvlu(A,b);
X=zeros(n+2,1); %Créer la matrice colonne nulle de taille n+2, on ajoute 0 à l'extrémité
  for j=2:n+1
    X(j)=x(j-1); %Copier la solution x dans la matrice X commençant j=2 jusqu'à n+1 
  end
  y=[0 1 2 3 4 5 6 7 8 9 10]';
plot(y,X,'r:');%tracer le X , en couleur rouge 
for i=1:n %(b)
  c=zeros(n,1);
  c(i)=-1;
  x1=solvlu(A,c);
  %disp(x1);
  X=zeros(n+2,1);%Créer la matrice colonne nulle de taille n+2, on ajoute 0 à l'extrémité
  for j=2:n+1
    X(j)=x1(j-1); %Copier la solution x dans la matrice X commençant j=2 jusqu'à n+1 
  end
  plot(y,X);grid minor;%pour tracer le X et pour voir les pétits carraux 
  legend("bk=-1/9","b1=-1","b2=-1","b3=-1","b4=-1","b5=-1","b6=-1","b7=-1","b8=-1","b9=-1");
  X
end
axis("equal"); %pour que l'axe des x et l'axe des y soient égaux
axis([0 14 -8 1]); %regler l'echelle de la figure
title("Les courbes des fléxions de poutre")
xlabel("axe  des abscisses");
ylabel("axe des ordonnées");
hold off;