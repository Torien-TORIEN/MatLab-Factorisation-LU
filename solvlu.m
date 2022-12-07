function[x]=solvlu(A,b)
%cette fonction resout le systeme lineaire Ax=b par la methode de factorisation A=LU
%on résout d'abord Ly=b puis Ux=y
n=size(A,1); %Taille de A
R=factlu(A); %R est une mat dont la triang inf=L sans diag unité et la triang sup =U
U=triu(R);  %Extraire la matrice triang supérieure de R
L=R-U+diag(ones(n,1)); %Extraire la matrice inf de R en ajoutant la diagonale unité
y=descent(L,b); %Resoudre Ly=b par la methode de la déscente triangulaire
x=ascent(U,y); %Resoudre Ux=y par la méthode de rémontée triangulaire
end