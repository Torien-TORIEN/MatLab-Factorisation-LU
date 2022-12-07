function[A]=factlu(A)
%fonction qui factorise la matrice sous la forme A=LU 
n=size(A,1);%Taille de A
L=eye(n);% Matrice identité de taille n
  for i=1:n-1
    %chercher pivot de methode Gauss classique
    for j=i:n
      if A(j,i)!=0
        p=A(j,i); % pivot
        k=j;      %indice de pivot
        break;
      end
    end
    %matrice de permutation
    P=eye(n);        % Matrice identité de taille 
    m=P(i,:);        % auxiliaire =i-eme ligne de P
    P(i,:)=P(k,:);   % Permuter k-ieme ligne et i-ieme ligne de l'identité
    P(k,:)=m;
    A=P*A;           %Multiplier A à gauche par P
    %matrice d'élimination
    E=eye(n);    %Matrice identité de taille n
    invE=eye(n);
    for j=i+1:n
      if p!=0
      E(j,i)=-A(j,i)/p; 
      invE(j,i)=A(j,i)/p;
      end
    end
    A=E*A;  %Multiplier A à gauche par E
    L=L*P*invE; %Construire la matrice L
  end
A=L-eye(n)+A; % A composée de L sans termes diagonaux de U
end