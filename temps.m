%resolution du systeme 3
n=input("donnner la valeur de n:"); %Entrer la valeur de n au clavier 
A=fillA(n); %remplir la matrice A
b=-1/n*ones(n,1); %On a choisit bk=-1/n par tout
TIME=tic(); %Le chrono commence par ici ,car ici on commence à resoudre le systeme
x=solvlu(A,b);
toc(TIME); %Fin du chrono
