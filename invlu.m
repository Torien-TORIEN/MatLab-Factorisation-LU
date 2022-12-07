function[B]=invlu(A)
%cette fonction calcule l'inverse de A par la methode de foctorisation A=LU
%et Calcule l'inverse de L et l'inverse de U par la resolution du systeme linéaire
n=size(A,1); %Taille de A
R=factlu(A); %Farctoriser A sous la forme LU mais non séparées
U=triu(R);  %Extraire la matrice U qui est la triang sup de R
L=R-U+diag(ones(n,1));  %Extraire la matrice L=la triang inf de R en ajoutant la diag unité
invL=zeros(n);  %matrice initialisée à matrice nulle ,et sera l'inverse de L
invU=zeros(n);  %matrice initialisée à matrice nulle ,et sera l'inverse de U
  for i=1:n
    ei=zeros(n,1);%ei est une mat colonne dont les coefs sont nuls sauf à la i_eme position 
    ei(i)=1;
    invL(:,i)=solvlu(L,ei); %la i-eme colonne de invL=la solution de Lx=ei
    invU(:,i)=solvlu(U,ei); %la i-eme colonne de invU=la solution de Ux=ei
  end 
B=invU*invL; %B=inverse de U multipliée à droite par l'inverse de L
end